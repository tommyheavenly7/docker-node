# docker-node

This project provides a starting point to build your docker containers for node projects. The containers contain basic npm packages as commands in advance.
You can extend it and efficiently create containers for development as you like.

## Quickstart

### Using Docker command

First, you might want to pull the image.

```shell script
docker pull tommynovember7/docker-node:node10
```

After that, you can run the container.

```shell script
docker run --rm -v $(pwd):/var/project -w /var/project tommynovember7/docker-node:node10
```

Here are execution examples:

```shell script
$ docker run --rm -v $(pwd):/var/project -w /var/project tommynovember7/docker-node:node10 --version
v10.18.0

$ docker run --rm -v $(pwd):/var/project -w /var/project --entrypoint pwd tommynovember7/docker-node:node10
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
    image: tommynovember7/docker-node:node10
    volumes:
      - ./:/var/project
    working_dir: /var/project

  npm:
    container_name: node10-npm
    image: tommynovember7/docker-node:node10
    volumes:
      - ./:/var/project
    working_dir: /var/project
    entrypoint: [ "/usr/local/bin/npm" ]

  npx:
    container_name: node10-npx
    image: tommynovember7/docker-node:node10
    volumes:
      - ./:/var/project
    working_dir: /var/project
    entrypoint: [ "/usr/local/bin/npx" ]

  yarn:
    container_name: node10-yarn
    image: tommynovember7/docker-node:node10
    volumes:
      - ./:/var/project
    working_dir: /var/project
    entrypoint: [ "/usr/local/bin/yarn" ]

  ncu:
    container_name: node10-ncu
    image: tommynovember7/docker-node:node10
    volumes:
      - ./:/var/project
    working_dir: /var/project
    entrypoint: [ "/usr/local/bin/ncu" ]

  gulp:
    container_name: node10-gulp
    image: tommynovember7/docker-node:node10
    volumes:
      - ./:/var/project
    working_dir: /var/project
    entrypoint: ['/usr/local/bin/gulp', '-f', './gulp.js']

  webpack:
    container_name: node10-webpack
    image: tommynovember7/docker-node:node10
    volumes:
      - ./:/var/project
    working_dir: /var/project
    entrypoint: ['/usr/local/bin/webpack']

  webpack-cli:
    container_name: node10-webpack-cli
    image: tommynovember7/docker-node:node10
    volumes:
      - ./:/var/project
    working_dir: /var/project
    entrypoint: ['/usr/local/bin/webpack-cli']

  eslint:
    container_name: node10-eslint
    image: tommynovember7/docker-node:node10
    volumes:
      - ./:/var/project
    working_dir: /var/project
    entrypoint: ['/usr/local/bin/eslint']
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
```

```shell script
source .bashrc
```

Finally, you can run the containers.

```shell script
$ command -v node
alias node='docker-compose run --rm node'

$ node --version
v10.18.0
```
