#!/bin/bash

# Exit when any command fails
set -e
set -x

VERSION=1.1.15

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

(cd mailhog && docker build --pull --no-cache --tag=itkdev/mailhog .)

(cd supervisor && docker build --pull --no-cache --build-arg VERSION=7.4 --tag=itkdev/supervisor-php7.4:alpine .)
(cd supervisor && docker build --pull --no-cache --build-arg VERSION=8.0 --tag=itkdev/supervisor-php8.0:alpine .)
(cd supervisor && docker build --pull --no-cache --build-arg VERSION=8.1 --tag=itkdev/supervisor-php8.1:alpine .)

docker image tag itkdev/php5.6-fpm itkdev/php5.6-fpm:${VERSION}
docker image tag itkdev/php5.6-fpm:alpine itkdev/php5.6-fpm:alpine-${VERSION}
docker image tag itkdev/php5.6-fpm:alpine itkdev/php5.6-fpm:alpine-wkhtmltopdf-${VERSION}
docker push itkdev/php5.6-fpm:latest
docker push itkdev/php5.6-fpm:${VERSION}
docker push itkdev/php5.6-fpm:alpine
docker push itkdev/php5.6-fpm:alpine-${VERSION}
docker push itkdev/php5.6-fpm:alpine-wkhtmltopdf
docker push itkdev/php5.6-fpm:alpine-wkhtmltopdf-${VERSION}
docker trust sign itkdev/php5.6-fpm:latest
docker trust sign itkdev/php5.6-fpm:${VERSION}
docker trust sign itkdev/php5.6-fpm:alpine
docker trust sign itkdev/php5.6-fpm:alpine-${VERSION}
docker trust sign itkdev/php5.6-fpm:alpine-wkhtmltopdf
docker trust sign itkdev/php5.6-fpm:alpine-wkhtmltopdf-${VERSION}

docker image tag itkdev/php7.0-fpm itkdev/php7.0-fpm:${VERSION}
docker image tag itkdev/php7.0-fpm:alpine itkdev/php7.0-fpm:alpine-${VERSION}
docker push itkdev/php7.0-fpm:latest
docker push itkdev/php7.0-fpm:alpine
docker push itkdev/php7.0-fpm:${VERSION}
docker push itkdev/php7.0-fpm:alpine-${VERSION}
docker trust sign itkdev/php7.0-fpm:latest
docker trust sign itkdev/php7.0-fpm:alpine
docker trust sign itkdev/php7.0-fpm:${VERSION}
docker trust sign itkdev/php7.0-fpm:alpine-${VERSION}

docker image tag itkdev/php7.2-fpm itkdev/php7.2-fpm:${VERSION}
docker image tag itkdev/php7.2-fpm:alpine itkdev/php7.2-fpm:alpine-${VERSION}
docker push itkdev/php7.2-fpm:latest
docker push itkdev/php7.2-fpm:alpine
docker push itkdev/php7.2-fpm:${VERSION}
docker push itkdev/php7.2-fpm:alpine-${VERSION}
docker trust sign itkdev/php7.2-fpm:latest
docker trust sign itkdev/php7.2-fpm:alpine
docker trust sign itkdev/php7.2-fpm:${VERSION}
docker trust sign itkdev/php7.2-fpm:alpine-${VERSION}

docker image tag itkdev/php7.3-fpm itkdev/php7.3-fpm:${VERSION}
docker image tag itkdev/php7.3-fpm:alpine itkdev/php7.3-fpm:alpine-${VERSION}
docker push itkdev/php7.3-fpm:latest
docker push itkdev/php7.3-fpm:alpine
docker push itkdev/php7.3-fpm:${VERSION}
docker push itkdev/php7.3-fpm:alpine-${VERSION}
docker push itkdev/php7.3-fpm:blackfire
docker trust sign itkdev/php7.3-fpm:latest
docker trust sign itkdev/php7.3-fpm:alpine
docker trust sign itkdev/php7.3-fpm:${VERSION}
docker trust sign itkdev/php7.3-fpm:alpine-${VERSION}
docker trust sign itkdev/php7.3-fpm:blackfire

docker image tag itkdev/php7.4-fpm itkdev/php7.4-fpm:${VERSION}
docker image tag itkdev/php7.4-fpm:alpine itkdev/php7.4-fpm:alpine-${VERSION}
docker push itkdev/php7.4-fpm:latest
docker push itkdev/php7.4-fpm:alpine
docker push itkdev/php7.4-fpm:${VERSION}
docker push itkdev/php7.4-fpm:alpine-${VERSION}
docker trust sign itkdev/php7.4-fpm:latest
docker trust sign itkdev/php7.4-fpm:alpine
docker trust sign itkdev/php7.4-fpm:${VERSION}
docker trust sign itkdev/php7.4-fpm:alpine-${VERSION}

docker image tag itkdev/php8.0-fpm itkdev/php8.0-fpm:${VERSION}
docker image tag itkdev/php8.0-fpm:alpine itkdev/php8.0-fpm:alpine-${VERSION}
docker push itkdev/php8.0-fpm:latest
docker push itkdev/php8.0-fpm:${VERSION}
docker push itkdev/php8.0-fpm:alpine
docker push itkdev/php8.0-fpm:alpine-${VERSION}
docker trust sign itkdev/php8.0-fpm:latest
docker trust sign itkdev/php8.0-fpm:${VERSION}
docker trust sign itkdev/php8.0-fpm:alpine
docker trust sign itkdev/php8.0-fpm:alpine-${VERSION}

docker image tag itkdev/php8.1-fpm itkdev/php8.1-fpm:${VERSION}
docker image tag itkdev/php8.1-fpm:alpine itkdev/php8.1-fpm:alpine-${VERSION}
docker push itkdev/php8.1-fpm:latest
docker push itkdev/php8.1-fpm:${VERSION}
docker push itkdev/php8.1-fpm:alpine
docker push itkdev/php8.1-fpm:alpine-${VERSION}
docker trust sign itkdev/php8.1-fpm:latest
docker trust sign itkdev/php8.1-fpm:${VERSION}
docker trust sign itkdev/php8.1-fpm:alpine
docker trust sign itkdev/php8.1-fpm:alpine-${VERSION}

docker image tag itkdev/php8.2-fpm itkdev/php8.2-fpm:${VERSION}
docker image tag itkdev/php8.2-fpm:alpine itkdev/php8.2-fpm:alpine-${VERSION}
docker push itkdev/php8.2-fpm:alpine
docker push itkdev/php8.2-fpm:alpine-${VERSION}
docker trust sign itkdev/php8.2-fpm:alpine
docker trust sign itkdev/php8.2-fpm:alpine-${VERSION}

docker image tag itkdev/supervisor-php7.4:alpine itkdev/supervisor-php7.4:alpine-${VERSION}
docker push itkdev/supervisor-php7.4:alpine
docker push itkdev/supervisor-php7.4:alpine-${VERSION}
docker trust sign itkdev/supervisor-php7.4:alpine
docker trust sign itkdev/supervisor-php7.4:alpine-${VERSION}

docker image tag itkdev/supervisor-php8.0:alpine itkdev/supervisor-php8.0:alpine-${VERSION}
docker push itkdev/supervisor-php8.0:alpine
docker push itkdev/supervisor-php8.0:alpine-${VERSION}
docker trust sign itkdev/supervisor-php8.0:alpine
docker trust sign itkdev/supervisor-php8.0:alpine-${VERSION}

docker image tag itkdev/supervisor-php8.1:alpine itkdev/supervisor-php8.1:alpine-${VERSION}
docker push itkdev/supervisor-php8.1:alpine
docker push itkdev/supervisor-php8.1:alpine-${VERSION}
docker trust sign itkdev/supervisor-php8.1:alpine
docker trust sign itkdev/supervisor-php8.1:alpine-${VERSION}

docker image tag itkdev/drush6 itkdev/drush6:${VERSION}
docker push itkdev/drush6:latest
docker push itkdev/drush6:${VERSION}
docker trust sign itkdev/drush6:latest
docker trust sign itkdev/drush6:${VERSION}

docker image tag itkdev/mariadb itkdev/mariadb:${VERSION}
docker push itkdev/mariadb:latest
docker push itkdev/mariadb:${VERSION}
docker trust sign itkdev/mariadb:latest
docker trust sign itkdev/mariadb:${VERSION}

docker image tag itkdev/mailhog itkdev/mailhog:${VERSION}
docker push itkdev/mailhog:latest
docker push itkdev/mailhog:${VERSION}
docker trust sign itkdev/mailhog:latest
docker trust sign itkdev/mailhog:${VERSION}

