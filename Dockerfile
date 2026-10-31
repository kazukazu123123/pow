# syntax=docker/dockerfile:1.28.0@sha256:bb22d9815c728170f72750f4e5b0d672e06176142e1d602c7e66c050100b7e5b

# renovate: datasource=github-releases depName=krallin/tini
ARG TINI_VERSION=v0.19.0

# バージョンは package.json の devEngines.packageManager と揃える。
FROM ghcr.io/pnpm/pnpm:12.15.0@sha256:d6148daf3ad2af8fa4ecd1aa06db73da32b2e37f63088987eea2fb375ee7f320 AS pnpm
# => /opt/pnpm/pnpm

FROM buildpack-deps:26.10@sha256:1842c8766efc4bc743374913dbb2196ef9da2b8f1ba6fbbb68594ba7086a65ab AS pnpm-base
ENV PNPM_HOME=/pnpm
ENV PATH="$PNPM_HOME/bin:$PATH"
ENV PNPM_CONFIG_STORE_DIR=/pnpm-store
ENV PNPM_CONFIG_CACHE_DIR=/pnpm-cache
COPY --link --from=pnpm /opt/pnpm/pnpm /pnpm/bin/pnpm
# => /pnpm/bin/pnpm

FROM scratch AS tini-amd64
ARG TINI_VERSION
ADD --checksum=sha256:c5b0666b4cb676901f90dfcb37106783c5fe2077b04590973b885950611b30ee --chmod=0755 \
    https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini-static-amd64 /tini
FROM scratch AS tini-arm64
ARG TINI_VERSION
ADD --checksum=sha256:eae1d3aa50c48fb23b8cbdf4e369d0910dfc538566bfd09df89a774aa84a48b9 --chmod=0755 \
    https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini-static-arm64 /tini
FROM tini-${TARGETARCH} AS tini
# => /tini（0755）

# 依存のビルドに node-gyp が要る（zlib-sync が node-gyp rebuild を持つ）。
# pnpm-base に直接入れると pin の変更で全段のキャッシュが失われるので、この段にマウントする。
FROM pnpm-base AS toolchain
ARG TARGETPLATFORM
# renovate: datasource=npm depName=node-gyp
ARG NODE_GYP_VERSION=13.1.0
RUN --mount=type=cache,id=pnpm-store-$TARGETPLATFORM,target=/pnpm-store \
    --mount=type=cache,id=pnpm-cache-$TARGETPLATFORM,target=/pnpm-cache \
    pnpm add --global node-gyp@${NODE_GYP_VERSION}
# => /pnpm/bin/node-gyp と /pnpm/global（shim が ../global 配下のパッケージを解決する）

FROM pnpm-base AS fetch-deps
WORKDIR /_
ARG TARGETPLATFORM
RUN --mount=type=cache,id=pnpm-store-$TARGETPLATFORM,target=/pnpm-store \
    --mount=type=cache,id=pnpm-cache-$TARGETPLATFORM,target=/pnpm-cache \
    --mount=type=bind,from=toolchain,source=/pnpm/bin/node-gyp,target=/pnpm/bin/node-gyp \
    --mount=type=bind,from=toolchain,source=/pnpm/global,target=/pnpm/global \
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
# fetch がビルドを走らせるので、lock 済みの node と node-gyp をマウントする。
FROM pnpm-base AS fetch-prod
WORKDIR /_
ARG TARGETPLATFORM
RUN --mount=type=cache,id=pnpm-store-$TARGETPLATFORM,target=/pnpm-store \
    --mount=type=cache,id=pnpm-cache-$TARGETPLATFORM,target=/pnpm-cache \
    --mount=type=bind,from=dev-deps,source=/_/node_modules/node/bin/node,target=/usr/local/bin/node \
    --mount=type=bind,from=toolchain,source=/pnpm/bin/node-gyp,target=/pnpm/bin/node-gyp \
    --mount=type=bind,from=toolchain,source=/pnpm/global,target=/pnpm/global \
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

FROM gcr.io/distroless/cc-debian13:nonroot@sha256:3ee00291cf386ec52a552e6a858d555debd74776eb4bfa53fa3df2cd6677515e AS runner
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
