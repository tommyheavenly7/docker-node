FROM node:12-alpine

RUN apk --update add \
    bash \
    curl \
    groff \
    jq \
    less

RUN npm install -g npm@latest \
    && npm install -g npm-check-updates \
    && npm install -g eslint