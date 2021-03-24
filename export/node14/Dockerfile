FROM node:14-alpine

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
    python3 \
    zlib-dev

# Python
ENV PYTHONUNBUFFERED=1
RUN ln -sf python3 /usr/bin/python && \
    python3 -m ensurepip && \
    pip3 install --no-cache --upgrade pip setuptools

RUN npm install -g \
    npm-check-updates \
    eslint \
    gulp \
    typescript \
    webpack \
    webpack-cli