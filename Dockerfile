# syntax=docker/dockerfile:1.26.0@sha256:ecfaec9ed6d810b56388c508f4121597bfbba70d41a6dfeee4d8cad5f295fc32

# ビルド時にベースとするイメージを定義
FROM buildpack-deps:26.04@sha256:2abf965364833fc3591fee2e7c823ee8e61c495fad6c15c1738fd9a6e9d04610 AS base-build
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"

# jqのバイナリを取得する => /jq
FROM ghcr.io/jqlang/jq:1.7@sha256:12f998e5a6f3f6916f744ba6f01549f156f624b42f7564e67ec6dd4733973146 AS fetch-jq

# pnpmを取得する => /pnpm/
FROM quay.io/curl/curl-base:8.21.0@sha256:a6cd7fc2e29e3c7036f129e20d29f6e59a2f9372f7ce0bf4f51a066b388a1798 AS fetch-pnpm
ENV SHELL="/bin/sh"
ENV ENV="/tmp/env"
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
WORKDIR /dist
RUN --mount=type=bind,source=package.json,target=package.json \
    --mount=type=bind,from=fetch-jq,source=/jq,target=/mounted-bin/jq \
    PNPM_VERSION=$(cat package.json  | /mounted-bin/jq -r .packageManager | grep -oE '[0-9]+\.[0-9]+\.[0-9]+') \
    && curl -fsSL --compressed https://get.pnpm.io/install.sh | env PNPM_VERSION=$PNPM_VERSION sh - \
    && ln -s "$PNPM_HOME/.tools/pnpm-exe/$PNPM_VERSION/pnpm" "$PNPM_HOME/pnpm" -f

# .npmrcに設定を追記する => /_/.npmrc
FROM base-build AS change-npmrc
WORKDIR /_
COPY --link .npmrc ./
RUN echo "store-dir=/.pnpm-store" >> .npmrc

# Node.jsと依存パッケージを取得する => /pnpm/,/.pnpm-store/,/_/node_modules/
FROM base-build AS fetch-deps
WORKDIR /_
COPY --link --from=fetch-pnpm /pnpm/ /pnpm/
ARG TARGETPLATFORM
RUN --mount=type=cache,id=pnpm-$TARGETPLATFORM,target=/.pnpm-store/ \
    --mount=type=bind,from=change-npmrc,source=/_/.npmrc,target=.npmrc \
    pnpm install -g node-gyp
RUN --mount=type=cache,id=pnpm-$TARGETPLATFORM,target=/.pnpm-store/ \
    --mount=type=bind,from=change-npmrc,source=/_/.npmrc,target=.npmrc \
    --mount=type=bind,source=package.json,target=package.json \
    --mount=type=bind,source=pnpm-lock.yaml,target=pnpm-lock.yaml \
    PRISMA_SKIP_POSTINSTALL_GENERATE=true pnpm fetch

# dev用の依存パッケージをインストールする => /_/node_modules/
FROM --platform=$BUILDPLATFORM base-build AS dev-deps
WORKDIR /_
COPY --link --from=fetch-deps /_/node_modules/ ./node_modules/
ARG BUILDPLATFORM
RUN --mount=type=cache,id=pnpm-$BUILDPLATFORM,target=/.pnpm-store/ \
    --mount=type=bind,from=fetch-deps,source=/pnpm/,target=/pnpm/ \
    --mount=type=bind,from=change-npmrc,source=/_/.npmrc,target=.npmrc \
    --mount=type=bind,source=package.json,target=package.json \
    --mount=type=bind,source=pnpm-lock.yaml,target=pnpm-lock.yaml \
    --mount=type=bind,source=.husky/install.mjs,target=.husky/install.mjs \
    pnpm install --frozen-lockfile --offline

# ビルドする => /_/node_modules/.prisma/client/,/_/dist/
FROM --platform=$BUILDPLATFORM base-build AS build
WORKDIR /_
COPY --link --from=dev-deps /_/node_modules/ ./node_modules/
RUN --mount=type=bind,from=fetch-deps,source=/pnpm/,target=/pnpm/ \
    --mount=type=bind,source=package.json,target=package.json \
    --mount=type=bind,from=change-npmrc,source=/_/.npmrc,target=.npmrc \
    --mount=type=bind,source=src/,target=src/,readwrite \
    --mount=type=bind,source=.swcrc,target=.swcrc \
    --mount=type=bind,source=prisma/schema.prisma,target=prisma/schema.prisma \
    pnpm db:generate && pnpm build

# prod用の依存パッケージをインストールする => /_/node_modules/
FROM base-build AS prod-deps
WORKDIR /_
COPY --link --from=fetch-deps /_/node_modules/ ./node_modules/
ARG NODE_ENV="production"
ARG TARGETPLATFORM
RUN --mount=type=cache,id=pnpm-$TARGETPLATFORM,target=/.pnpm-store/ \
    --mount=type=bind,from=fetch-deps,source=/pnpm/,target=/pnpm/ \
    --mount=type=bind,from=change-npmrc,source=/_/.npmrc,target=.npmrc \
    --mount=type=bind,source=package.json,target=package.json \
    --mount=type=bind,source=pnpm-lock.yaml,target=pnpm-lock.yaml \
    --mount=type=bind,source=.husky/install.mjs,target=.husky/install.mjs \
    pnpm install --frozen-lockfile --offline

FROM gcr.io/distroless/cc-debian13:nonroot@sha256:c31ff9abcb1910f3ab25c7957bdaf0bfe12a01eb546e8df2282f1c8f682b606c AS runner
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
ENV NODE_ENV="production"
WORKDIR /app
COPY --link --from=fetch-deps /pnpm/ /pnpm/
COPY --link --from=build /_/dist/ ./dist/
COPY --link --from=prod-deps /_/node_modules/ ./node_modules/
COPY --link .npmrc package.json ./
ENTRYPOINT [ "pnpm", "--shell-emulator" ]
CMD [ "start" ]
