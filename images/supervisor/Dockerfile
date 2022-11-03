ARG VERSION=8.1

FROM itkdev/php${VERSION}-fpm:alpine-1.1.17
LABEL maintainer="ITK Dev <itkdev@mkb.aarhus.dk>"

RUN apk --update add --no-cache \
        supervisor \
        inotify-tools

RUN docker-php-ext-configure pcntl --enable-pcntl \
  && docker-php-ext-install pcntl

# Install configuration template handler
ADD https://github.com/kelseyhightower/confd/releases/download/v0.16.0/confd-0.16.0-linux-amd64 /usr/local/bin/confd
RUN chmod +x /usr/local/bin/confd

# Copy configuration.
COPY etc/confd/conf.d/supervisor.toml /etc/confd/conf.d/supervisor.toml
COPY etc/confd/templates/supervisor.tmpl /etc/confd/templates/supervisor.tmpl
RUN mkdir -p /etc/supervisor.d/

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

CMD [ "docker-entrypoint.sh" ]