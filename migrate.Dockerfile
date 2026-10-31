# syntax=docker/dockerfile:1.28.0@sha256:bb22d9815c728170f72750f4e5b0d672e06176142e1d602c7e66c050100b7e5b

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

# prisma CLI は devDependencies にある。本番依存を展開しないので、node-gyp を足す段は要らない。
FROM pnpm-base AS fetch-deps
WORKDIR /_
ARG TARGETPLATFORM
RUN --mount=type=cache,id=pnpm-store-$TARGETPLATFORM,target=/pnpm-store \
    --mount=type=cache,id=pnpm-cache-$TARGETPLATFORM,target=/pnpm-cache \
    --mount=type=bind,source=pnpm-lock.yaml,target=pnpm-lock.yaml \
    --mount=type=bind,source=pnpm-workspace.yaml,target=pnpm-workspace.yaml \
    pnpm fetch --dev
# => /_/node_modules

# fetch はルートの node_modules を作らないので Link する（devDependencies だけ）。
FROM pnpm-base AS dev-deps
WORKDIR /_
COPY --link --from=fetch-deps /_/node_modules/ ./node_modules/
ARG TARGETPLATFORM
RUN --mount=type=cache,id=pnpm-store-$TARGETPLATFORM,target=/pnpm-store \
    --mount=type=cache,id=pnpm-cache-$TARGETPLATFORM,target=/pnpm-cache \
    --mount=type=bind,source=package.json,target=package.json \
    --mount=type=bind,source=pnpm-lock.yaml,target=pnpm-lock.yaml \
    --mount=type=bind,source=pnpm-workspace.yaml,target=pnpm-workspace.yaml \
    pnpm install --frozen-lockfile --prefer-offline --dev --ignore-scripts
# => /_/node_modules

FROM busybox:1.37-musl@sha256:5cec3fc171c87218698e85a52af7087de727372aae264a787b8112901a5b0092 AS busybox
# => /bin/busybox と applet の hardlink（/bin/sh など）

FROM gcr.io/distroless/cc-debian13:nonroot@sha256:3ee00291cf386ec52a552e6a858d555debd74776eb4bfa53fa3df2cd6677515e AS runner
ENV NODE_ENV=production
ENV PNPM_HOME=/pnpm
ENV PATH="$PNPM_HOME/bin:$PATH"
# 起動時に disk / network へ触らせないための無効化（Dockerfile の runner 段と同じ理由）
ENV PNPM_CONFIG_VERIFY_DEPS_BEFORE_RUN=false
ENV PNPM_CONFIG_UPDATE_NOTIFIER=false
ENV PNPM_CONFIG_PM_ON_FAIL=ignore
WORKDIR /app
COPY --link --from=busybox /bin/ /bin/
COPY --link --from=pnpm /opt/pnpm/pnpm /pnpm/bin/pnpm
COPY --link --from=dev-deps /_/node_modules/ ./node_modules/
COPY --link prisma/ prisma/
COPY --link package.json pnpm-workspace.yaml ./
CMD ["pnpm", "run", "db:deploy"]
# => /app/node_modules（lock 済みの Node.js と prisma CLI を含む）, /app/prisma, /app/package.json, /app/pnpm-workspace.yaml, /pnpm/bin/pnpm, /bin/busybox
