FROM node:12-alpine

RUN apk --no-cache add \
    curl \
    git \
    groff \
    less

RUN npm install -g npm@latest \
    npm-check-updates \
    eslint \
    webpack \
    webpack-cli \
    gulp