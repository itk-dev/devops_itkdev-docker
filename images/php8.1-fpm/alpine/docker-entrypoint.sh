#!/bin/sh
set -e

# Add docker host domain to hosts file
if [ ! -z "${DOCKER_HOST_DOMAIN}" ]; then
  echo $(getent hosts host.docker.internal | cut -d" " -f1) ${DOCKER_HOST_DOMAIN} >> /etc/hosts
fi

## Set selected composer version. Default version 2.
if [ ! -z "${COMPOSER_VERSION}" ]; then
  if [ "${COMPOSER_VERSION}" = "1" ]; then
    ln -fs /usr/bin/composer1 /home/deploy/bin/composer
  else
    ln -fs /usr/bin/composer2 /home/deploy/bin/composer
  fi
else
  ln -fs /usr/bin/composer2 /home/deploy/bin/composer
fi

## Start the PHP FPM process.
echo "Starting PHP 8.1 FPM"

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
  set -- php-fpm "$@"
fi

env

exec php-fpm "$@"
