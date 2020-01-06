# docker-node

This project provides a starting point to build your docker containers for node projects. The containers contain basic npm packages as commands in advance. You can extend it and easily create containers for development as you like.

## Quickstart

### Using Docker command

First, you might want to build a custom image using Dockerfile.

```shell script
docker build --tag tommynovember7/node10:latest export/node10 
```

After that, you can run the container.

```shell script
docker run --rm -v $(pwd):/var/project -w /var/project tommynovember7/node10:latest
```

Here are execution examples:

```shell script
$ docker run --rm -v $(pwd):/var/project -w /var/project tommynovember7/node10:latest --version
v10.18.0

$ docker run --rm -v $(pwd):/var/project -w /var/project --entrypoint pwd tommynovember7/node10:latest
/var/project
```

### Using docker-compose

Before building containers, you need to create your `docker-compose.yaml` and `.bashrc` and edit them as you like.

```shell script
cp bashrc.dist .bashrc
cp docker-compose.dist.yml docker-compose.yml
```

Next, you can prepare containers.

```shell script
docker-compose build --force-rm --pull
docker-compose up --no-start --force-recreate
```

Before running a container you've built, set command aliases for convenience.

```shell script
source .bashrc
```

Finally, you can run the containers.

```shell script
$ command -v node
alias node='docker-compose run --rm cli'

$ node --version
v12.14.0
```