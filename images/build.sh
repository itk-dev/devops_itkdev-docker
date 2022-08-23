#!/bin/bash

# Exit when any command fails
set -e
set -x

VERSION=1.1.12

(cd php5.6-fpm/ubuntu && docker build --pull --no-cache --tag=itkdev/php5.6-fpm .)
(cd php5.6-fpm/alpine && docker build --pull --no-cache --tag=itkdev/php5.6-fpm:alpine .)
(cd php5.6-fpm/alpine-wkhtmltopdf && docker build --pull --no-cache --tag=itkdev/php5.6-fpm:alpine-wkhtmltopdf .)

(cd php7.0-fpm/ubuntu && docker build --pull --no-cache --tag=itkdev/php7.0-fpm .)
(cd php7.0-fpm/alpine && docker build --pull --no-cache --tag=itkdev/php7.0-fpm:alpine .)

(cd php7.2-fpm/ubuntu && docker build --pull --no-cache --tag=itkdev/php7.2-fpm .)
(cd php7.2-fpm/alpine && docker build --pull --no-cache --tag=itkdev/php7.2-fpm:alpine .)

(cd php7.3-fpm/ubuntu && docker build --pull --no-cache --tag=itkdev/php7.3-fpm .)
(cd php7.3-fpm/alpine && docker build --pull --no-cache --tag=itkdev/php7.3-fpm:alpine .)
(cd php7.3-blackfire && docker build --pull --no-cache --tag=itkdev/php7.3-fpm:blackfire .)

(cd php7.4-fpm/ubuntu && docker build --pull --no-cache --tag=itkdev/php7.4-fpm .)
(cd php7.4-fpm/alpine && docker build --pull --no-cache --tag=itkdev/php7.4-fpm:alpine .)

(cd php8.0-fpm/ubuntu && docker build --pull --no-cache --tag=itkdev/php8.0-fpm .)
(cd php8.0-fpm/alpine && docker build --pull --no-cache --tag=itkdev/php8.0-fpm:alpine .)

(cd php8.1-fpm/ubuntu && docker build --pull --no-cache --tag=itkdev/php8.1-fpm .)
(cd php8.1-fpm/alpine && docker build --pull --no-cache --tag=itkdev/php8.1-fpm:alpine .)

#(cd php8.2-fpm/ubuntu && docker build --pull --no-cache --tag=itkdev/php8.2-fpm .)
(cd php8.2-fpm/alpine && docker build --pull --no-cache --tag=itkdev/php8.2-fpm:alpine .)

(cd drush6 && docker build --pull --no-cache --tag=itkdev/drush6 .)

(cd mariadb && docker build --pull --no-cache --tag=itkdev/mariadb .)

(cd supervisor && docker build --pull --no-cache --build-arg VERSION=7.4 --tag=itkdev/supervisor-php7.4:alpine .)
(cd supervisor && docker build --pull --no-cache --build-arg VERSION=8.0 --tag=itkdev/supervisor-php8.0:alpine .)
(cd supervisor && docker build --pull --no-cache --build-arg VERSION=8.1 --tag=itkdev/supervisor-php8.1:alpine .)

docker image tag itkdev/php5.6-fpm itkdev/php5.6-fpm:${VERSION}
docker push itkdev/php5.6-fpm
docker push itkdev/php5.6-fpm:${VERSION}

docker image tag itkdev/php5.6-fpm:alpine itkdev/php5.6-fpm:alpine-${VERSION}
docker push itkdev/php5.6-fpm:alpine
docker push itkdev/php5.6-fpm:alpine-${VERSION}
docker push itkdev/php5.6-fpm:alpine-wkhtmltopdf

docker image tag itkdev/php7.0-fpm itkdev/php7.0-fpm:${VERSION}
docker image tag itkdev/php7.0-fpm:alpine itkdev/php7.0-fpm:alpine-${VERSION}
docker push itkdev/php7.0-fpm
docker push itkdev/php7.0-fpm:alpine
docker push itkdev/php7.0-fpm:${VERSION}
docker push itkdev/php7.0-fpm:alpine-${VERSION}

docker image tag itkdev/php7.2-fpm itkdev/php7.2-fpm:${VERSION}
docker image tag itkdev/php7.2-fpm:alpine itkdev/php7.2-fpm:alpine-${VERSION}
docker push itkdev/php7.2-fpm
docker push itkdev/php7.2-fpm:alpine
docker push itkdev/php7.2-fpm:${VERSION}
docker push itkdev/php7.2-fpm:alpine-${VERSION}

docker image tag itkdev/php7.3-fpm itkdev/php7.3-fpm:${VERSION}
docker image tag itkdev/php7.3-fpm:alpine itkdev/php7.3-fpm:alpine-${VERSION}
docker push itkdev/php7.3-fpm
docker push itkdev/php7.3-fpm:alpine
docker push itkdev/php7.3-fpm:${VERSION}
docker push itkdev/php7.3-fpm:alpine-${VERSION}
docker push itkdev/php7.3-fpm:blackfire

docker image tag itkdev/php7.4-fpm itkdev/php7.4-fpm:${VERSION}
docker image tag itkdev/php7.4-fpm:alpine itkdev/php7.4-fpm:alpine-${VERSION}
docker push itkdev/php7.4-fpm
docker push itkdev/php7.4-fpm:alpine
docker push itkdev/php7.4-fpm:${VERSION}
docker push itkdev/php7.4-fpm:alpine-${VERSION}

docker image tag itkdev/php8.0-fpm itkdev/php8.0-fpm:${VERSION}
docker image tag itkdev/php8.0-fpm:alpine itkdev/php8.0-fpm:alpine-${VERSION}
docker push itkdev/php8.0-fpm
docker push itkdev/php8.0-fpm:alpine
docker push itkdev/php8.0-fpm:${VERSION}
docker push itkdev/php8.0-fpm:alpine-${VERSION}

docker image tag itkdev/php8.1-fpm itkdev/php8.1-fpm:${VERSION}
docker image tag itkdev/php8.1-fpm:alpine itkdev/php8.1-fpm:alpine-${VERSION}
docker push itkdev/php8.1-fpm
docker push itkdev/php8.1-fpm:alpine
docker push itkdev/php8.1-fpm:${VERSION}
docker push itkdev/php8.1-fpm:alpine-${VERSION}

# docker image tag itkdev/php8.2-fpm itkdev/php8.2-fpm:${VERSION}
docker image tag itkdev/php8.2-fpm:alpine itkdev/php8.2-fpm:alpine-${VERSION}
# docker push itkdev/php8.2-fpm
docker push itkdev/php8.2-fpm:alpine
# docker push itkdev/php8.2-fpm:${VERSION}
docker push itkdev/php8.2-fpm:alpine-${VERSION}

docker push itkdev/supervisor-php7.4:alpine
docker push itkdev/supervisor-php7.4:alpine-${VERSION}
docker push itkdev/supervisor-php8.0:alpine
docker push itkdev/supervisor-php8.0:alpine-${VERSION}
docker push itkdev/supervisor-php8.1:alpine
docker push itkdev/supervisor-php8.1:alpine-${VERSION}

docker image tag itkdev/drush6 itkdev/drush6:${VERSION}
docker push itkdev/drush6
docker push itkdev/drush6:${VERSION}

docker image tag itkdev/mariadb itkdev/mariadb:${VERSION}
docker push itkdev/mariadb
docker push itkdev/mariadb:${VERSION}
