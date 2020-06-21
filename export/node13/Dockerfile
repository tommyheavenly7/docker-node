FROM node:13-alpine

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
    py-pip \
    python3-dev \
    python3 \
    zlib-dev

# Python
RUN pip install --upgrade pip setuptools

RUN npm install -g \
    npm@latest \
    npm-check-updates \
    eslint \
    gulp \
    typescript \
    webpack \
    webpack-cli