#!/bin/bash

# Exit when any command fails
set -e
set -x

VERSION=1.1.27

(cd php5.6-fpm/alpine-wkhtmltopdf && docker build --no-cache --tag=itkdev/php5.6-fpm:alpine-wkhtmltopdf .)
(cd php7.4-fpm/alpine-wkhtmltopdf && docker build --no-cache --tag=itkdev/php7.4-fpm:alpine-wkhtmltopdf .)
#(cd php7.4-fpm/ubuntu-wkhtmltopdf && docker build --no-cache --tag=itkdev/php7.4-fpm:wkhtmltopdf .)

####
# Push images
####

docker image tag itkdev/php5.6-fpm:alpine itkdev/php5.6-fpm:alpine-${VERSION}
docker image tag itkdev/php5.6-fpm:alpine itkdev/php5.6-fpm:alpine-wkhtmltopdf-${VERSION}
docker push itkdev/php5.6-fpm:alpine-wkhtmltopdf
docker push itkdev/php5.6-fpm:alpine-wkhtmltopdf-${VERSION}

docker image tag itkdev/php7.4-fpm:alpine itkdev/php7.4-fpm:alpine-wkhtmltopdf-${VERSION}
# docker image tag itkdev/php7.4-fpm:wkhtmltopdf itkdev/php7.4-fpm:wkhtmltopdf-${VERSION}
# docker push itkdev/php7.4-fpm:wkhtmltopdf-${VERSION}
# docker push itkdev/php7.4-fpm:wkhtmltopdf
docker push itkdev/php7.4-fpm:alpine-wkhtmltopdf
docker push itkdev/php7.4-fpm:alpine-wkhtmltopdf-${VERSION}
