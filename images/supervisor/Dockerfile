ARG VERSION=8.1

FROM itkdev/php${VERSION}-fpm:alpine
LABEL maintainer="ITK Dev <itkdev@mkb.aarhus.dk>"

RUN apk --update add --no-cache \
        supervisor \
        inotify-tools

RUN docker-php-ext-configure pcntl --enable-pcntl \
  && docker-php-ext-install pcntl

# Copy configuration.
COPY etc/confd/conf.d/supervisor.toml /etc/confd/conf.d/supervisor.toml
COPY etc/confd/templates/supervisor.tmpl /etc/confd/templates/supervisor.tmpl
RUN mkdir -p /etc/supervisor.d/

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

CMD [ "docker-entrypoint.sh" ]