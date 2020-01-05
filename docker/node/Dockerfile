FROM node:12-alpine

RUN apk --no-cache add \
    curl \
    groff \
    jq \
    less

RUN npm install -g npm@latest \
    && npm install -g npm-check-updates \
    && npm install -g eslint \
    && npm install -g gulp