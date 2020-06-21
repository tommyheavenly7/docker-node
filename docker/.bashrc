export PATH="./docker/bin:../docker/bin:../../docker/bin:$PATH"
export PROJECT_ROOT="$PWD"
# shellcheck source=.env
source "${PROJECT_ROOT}"/docker/.env

_exec() {
  [[ -z "$2" ]] && docker exec -it "$1" bash \
  || docker exec -it "$1" "$2"
}
alias _build="docker-compose build --force-rm --pull"
alias _ps="docker-compose ps"
alias _run="docker-compose run --rm"
alias _stop="docker-compose stop"
alias _up="docker-compose up --detach --force-recreate --remove-orphans"
alias _down="docker-compose down --remove-orphans"
alias _no-start="docker-compose up --no-start --force-recreate --remove-orphans"
alias _mysql="mysql --host=127.0.0.1 --user=root --default-character-set=utf8mb4"

alias aws='docker run --rm -e "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" -e "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}" -e "AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}" -v "$(pwd):/aws" tommynovember7/aws-cli:latest'
alias hadolint='docker run --rm -v "$(pwd):/tmp" -w /tmp --entrypoint /bin/hadolint hadolint/hadolint:latest-debian'

alias node="docker-compose run --rm node node"
alias yarn="docker-compose run --rm node yarn"
alias npm="docker-compose run --rm node npm"
alias npx="docker-compose run --rm node npx"
alias ncu="docker-compose run --rm node ncu"
alias tsc="docker-compose run --rm node tsc"
alias eslint="docker-compose run --rm node eslint"
alias gulp="docker-compose run --rm gulp"
alias webpack="docker-compose run --rm node webpack"
alias webpack-cli="docker-compose run --rm node webpack-cli"