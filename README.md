# docker-node

This project provides a starting point to build your docker containers for node projects. The containers contain basic npm packages as commands in advance.
You can extend it and efficiently create containers for development as you like.

## Quickstart

### Using Docker command

First, you might want to pull the image.

```shell script
docker pull docker.pkg.github.com/tommyheavenly7/docker-node/node10:latest
```

After that, you can run the container.

```shell script
docker run --rm -v $(pwd):/var/project -w /var/project docker.pkg.github.com/tommyheavenly7/docker-node/node10:latest
```

Here are execution examples:

```shell script
$ docker run --rm -v $(pwd):/var/project -w /var/project docker.pkg.github.com/tommyheavenly7/docker-node/node10:latest --version
v10.18.0

$ docker run --rm -v $(pwd):/var/project -w /var/project --entrypoint pwd docker.pkg.github.com/tommyheavenly7/docker-node/node10:latest
/var/project
```

### Using docker-compose

Before building containers, you need to create your `docker-compose.yaml` and edit it as you like. Here's an example:


docker-compose.yml:
```yaml
version: '3.7'
services:
  node:
    container_name: node10
    image: docker.pkg.github.com/tommyheavenly7/docker-node/node10:latest
    volumes:
      - ./:/var/project
    working_dir: /var/project
```

After that, you can prepare containers.

```shell script
docker-compose up --no-start --force-recreate --remove-orphans
```

Before running a container, set command aliases for convenience.

.bashrc:
```text
alias node="docker-compose run --rm node"
alias npm="docker-compose run --rm npm"
alias npx="docker-compose run --rm npx"
alias yarn="docker-compose run --rm yarn"
alias gulp="docker-compose run --rm gulp"
alias webpack="docker-compose run --rm webpack"
alias webpack-cli="docker-compose run --rm webpack-cli"
alias eslint="docker-compose run --rm eslint"
alias tsc="docker-compose run --rm tsc"
```

```shell script
source .bashrc
```

Finally, you can run the containers.

```shell script
$ command -v node
alias node='docker-compose run --rm node'

$ node --version
v10.21.0
```
