#!/bin/bash
set -e

# Add docker host domain to hosts file
if [ ! -z "${DOCKER_HOST_DOMAIN}" ]; then
  echo $(getent hosts host.docker.internal | cut -d" " -f1) ${DOCKER_HOST_DOMAIN} >> /etc/hosts
fi

# Set xdebug remote host to docker host ip.
if [ ! -z "${PHP_XDEBUG}" ]; then
  export PHP_XDEBUG_REMOTE_HOST=$(getent hosts host.docker.internal | cut -d" " -f1)
fi

## Run templates with configuration.
/usr/local/bin/confd --onetime --backend env --confdir /etc/confd

## Set selected composer version. Default version 1.
if [ ! -z "${COMPOSER_VERSION}" ]; then
  if [ "${COMPOSER_VERSION}" = "1" ]; then
    ln -fs /usr/bin/composer1 /usr/local/bin/composer
  else
    ln -fs /usr/bin/composer2 /usr/local/bin/composer
  fi
else
  ln -fs /usr/bin/composer1 /usr/local/bin/composer
fi

## Start the php FPM process.
echo "Starting PHP 7.3 FPM"
php-fpm7.3 -F --pid /var/run/php/php-fpm7.3.pid -y /etc/php/7.3/fpm/php-fpm.conf
