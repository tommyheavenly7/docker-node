# docker-node-template

Dockerfile and docker-compose templates using node official images.

## Quick Start

First, you might want to prepare the docker containers.

```shell
source .bashrc
docker-compose up --no-start --force-recreate --build
```

Finally, you can use the commands:

```shell
$ command -v node
alias node='docker-compose run --rm cli'

$ node --version
v12.14.0

$ command -v node10
alias node10='docker-compose run --rm cli10'

$ node10 --version
v10.18.0
```
