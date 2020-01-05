FROM node:10-alpine

RUN npm install -g npm@latest \
    && npm install -g npm-check-updates

ENTRYPOINT [ "/usr/local/bin/ncu" ]