# syntax=docker/dockerfile:1.28.0@sha256:bb22d9815c728170f72750f4e5b0d672e06176142e1d602c7e66c050100b7e5b

# バージョンは package.json の devEngines.packageManager と揃える。
FROM ghcr.io/pnpm/pnpm:12.16.1@sha256:33081d3d2c96ba582d316cfd630f0f43961d9c60ff919b50edd1835a1462976b AS pnpm
# => /opt/pnpm, /opt/pnpm/pnpm

FROM buildpack-deps:26.10@sha256:e21b1ca11d60b5de3b770ce7a5fde8c84915209e0c9088872e1e2d208a176b78 AS pnpm-base
ENV PNPM_HOME=/pnpm
ENV PNPM_CONFIG_STORE_DIR=/pnpm-store
ENV PNPM_CONFIG_CACHE_DIR=/pnpm-cache
COPY --link --from=pnpm /opt/pnpm /opt/pnpm
RUN ln -s /opt/pnpm/pnpm /usr/local/bin/pnpm
# => /opt/pnpm, /usr/local/bin/pnpm（symlink）

FROM scratch AS tini-amd64
ADD --checksum=sha256:c5b0666b4cb676901f90dfcb37106783c5fe2077b04590973b885950611b30ee --chmod=0755 \
    https://github.com/krallin/tini/releases/download/v0.19.0/tini-static-amd64 /tini
FROM scratch AS tini-arm64
ADD --checksum=sha256:eae1d3aa50c48fb23b8cbdf4e369d0910dfc538566bfd09df89a774aa84a48b9 --chmod=0755 \
    https://github.com/krallin/tini/releases/download/v0.19.0/tini-static-arm64 /tini
FROM tini-${TARGETARCH} AS tini
# => /tini（0755）

FROM pnpm-base AS fetch-deps
WORKDIR /_
ARG TARGETPLATFORM
RUN --mount=type=cache,id=pnpm-store-$TARGETPLATFORM,target=/pnpm-store \
    --mount=type=cache,id=pnpm-cache-$TARGETPLATFORM,target=/pnpm-cache \
    --mount=type=bind,source=pnpm-lock.yaml,target=pnpm-lock.yaml \
    --mount=type=bind,source=pnpm-workspace.yaml,target=pnpm-workspace.yaml \
    pnpm fetch
# => /_/node_modules

# fetch はルートの node_modules を作らないので Link する（devDependencies も含む）。
FROM pnpm-base AS dev-deps
WORKDIR /_
COPY --link --from=fetch-deps /_/node_modules/ ./node_modules/
ARG TARGETPLATFORM
RUN --mount=type=cache,id=pnpm-store-$TARGETPLATFORM,target=/pnpm-store \
    --mount=type=cache,id=pnpm-cache-$TARGETPLATFORM,target=/pnpm-cache \
    --mount=type=bind,source=package.json,target=package.json \
    --mount=type=bind,source=pnpm-lock.yaml,target=pnpm-lock.yaml \
    --mount=type=bind,source=pnpm-workspace.yaml,target=pnpm-workspace.yaml \
    pnpm install --frozen-lockfile --prefer-offline --ignore-scripts
# => /_/node_modules

# prisma generate は schema.prisma と node_modules の client 版にだけ依存し、src を読まない
FROM pnpm-base AS generate
WORKDIR /_
# 無効化しないと run 前に pnpm が再インストールを発火し、COPY していない .husky/ の prepare を実行して落ちる。
ENV PNPM_CONFIG_VERIFY_DEPS_BEFORE_RUN=false
# engine は node_modules の prisma パッケージ配下へダウンロードされるので、マウントは readwrite が要る。
# マウントなのでその書き込みは層に残らず、この段が足す層は生成物だけになる。
RUN --mount=type=bind,from=dev-deps,source=/_/node_modules,target=/_/node_modules,readwrite \
    --mount=type=bind,source=package.json,target=package.json \
    --mount=type=bind,source=prisma/schema.prisma,target=prisma/schema.prisma \
    pnpm db:generate
# => /_/src/generated/client

# generate 済みを取り込むので、ビルドコンテキスト側の src/generated は COPY --exclude=generated で除外する。
FROM pnpm-base AS build
WORKDIR /_
ENV PNPM_CONFIG_VERIFY_DEPS_BEFORE_RUN=false
COPY --link --exclude=generated src/ src/
COPY --link --from=generate /_/src/generated/ src/generated/
RUN --mount=type=bind,from=dev-deps,source=/_/node_modules,target=/_/node_modules \
    --mount=type=bind,source=package.json,target=package.json \
    --mount=type=bind,source=.swcrc,target=.swcrc \
    pnpm build
# => /_/dist（swc は src/generated も取り込むので dist に engine が入る）

# 本番依存だけのツリーも fetch から直接作る（インストール済みのツリーから dev を削り切れない）。
# fetch がビルドを走らせるので、lock 済みの node をマウントする（node-gyp は pnpm 同梱のもの）。
FROM pnpm-base AS fetch-prod
WORKDIR /_
ARG TARGETPLATFORM
RUN --mount=type=cache,id=pnpm-store-$TARGETPLATFORM,target=/pnpm-store \
    --mount=type=cache,id=pnpm-cache-$TARGETPLATFORM,target=/pnpm-cache \
    --mount=type=bind,from=dev-deps,source=/_/node_modules/node/bin/node,target=/usr/local/bin/node \
    --mount=type=bind,source=pnpm-lock.yaml,target=pnpm-lock.yaml \
    --mount=type=bind,source=pnpm-workspace.yaml,target=pnpm-workspace.yaml \
    pnpm fetch --prod
# => /_/node_modules

FROM pnpm-base AS prod-deps
WORKDIR /_
COPY --link --from=fetch-prod /_/node_modules/ ./node_modules/
ARG TARGETPLATFORM
RUN --mount=type=cache,id=pnpm-store-$TARGETPLATFORM,target=/pnpm-store \
    --mount=type=cache,id=pnpm-cache-$TARGETPLATFORM,target=/pnpm-cache \
    --mount=type=bind,source=package.json,target=package.json \
    --mount=type=bind,source=pnpm-lock.yaml,target=pnpm-lock.yaml \
    --mount=type=bind,source=pnpm-workspace.yaml,target=pnpm-workspace.yaml \
    pnpm install --frozen-lockfile --prefer-offline --prod --ignore-scripts
# => /_/node_modules

FROM gcr.io/distroless/cc-debian13:nonroot@sha256:e792ab3d241a468a4fd7519ddbbebe66b49b5f365771716ea688ad40b6c6f1c2 AS runner
ENV NODE_ENV=production
ENV PNPM_HOME=/pnpm
ENV PATH="$PNPM_HOME/bin:$PATH"
ENV PNPM_CONFIG_SHELL_EMULATOR=true
# 起動時に disk / network へ触らせないための無効化（読み取り専用の本番ツリーが前提）
ENV PNPM_CONFIG_VERIFY_DEPS_BEFORE_RUN=false
ENV PNPM_CONFIG_PM_ON_FAIL=ignore
ENV PNPM_CONFIG_UPDATE_NOTIFIER=false
WORKDIR /app
COPY --link --from=pnpm /opt/pnpm/pnpm /pnpm/bin/pnpm
COPY --link --from=tini /tini /usr/local/bin/tini
# lock 済みの node は dev ツリーにしか無い（fetch --prod は runtime を除外する）。
# pnpm は PATH から node を引くので、node_modules ではなく /usr/local/bin に置く。
COPY --link --from=dev-deps /_/node_modules/node/bin/node /usr/local/bin/node
COPY --link --from=prod-deps /_/node_modules/ ./node_modules/
COPY --link --from=build /_/dist/ ./dist/
COPY --link package.json pnpm-workspace.yaml ./
# PID 1 は tini。SHELL_EMULATOR=true の pnpm は TERM を子に転送しないので、tini 無しだと猶予明けに SIGKILL で 137 終了（実測）。
# -g はプロセスグループへ送る指定。無いと pnpm だけに届いて node のハンドラ（src/index.ts）が走らない。
ENTRYPOINT ["/usr/local/bin/tini", "-g", "--"]
CMD ["pnpm", "start"]
# => /app/node_modules, /app/dist, /app/package.json, /app/pnpm-workspace.yaml, /usr/local/bin/tini, /usr/local/bin/node, /pnpm/bin/pnpm
