FROM node:12-alpine

RUN apk --no-cache add \
    autoconf \
    automake \
    build-base \
    curl \
    g++ \
    gcc \
    git \
    groff \
    libtool \
    make \
    nasm \
    openssl \
    python3 \
    zlib-dev

RUN npm install --global --no-optional \
    npm@latest \
    npm-check-updates \
    eslint \
    gulp \
    webpack \
    webpack-cli