# How to build Dockerfile for Docker Hub

First, you need to set command aliases to run containers efficiently.

```shell script
source docker/.bashrc
```
Next, you might want to prepare containers to build Dockerfiles. 

```shell script
docker-compose build --force-rm --pull
docker-compose up --no-start --force-recreate --remove-orphans
```

Finally, you can run gulp tasks. Newly generated Dockerfiles are in `./export/*`

```shell script
$ gulp build
[09:33:38] Using gulpfile /var/project/gulp.js
[09:33:38] Starting 'build'...
[09:33:38] Starting 'clean'...
[09:33:38] Finished 'clean' after 140 ms
[09:33:38] Starting 'compose_ncu'...
[09:33:39] Finished 'compose_ncu' after 268 ms
[09:33:39] Finished 'build' after 427 ms
```

Additionally, you can lint the generated Dockerfile using [hadolint](https://github.com/hadolint/hadolint).

```shell script
$ hadolint export/Dockerfile
$ hadolint export/node10/Dockerfile
$ hadolint export/node12/Dockerfile
```
