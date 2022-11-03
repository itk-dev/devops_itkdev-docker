ARG VERSION=8.1

FROM itkdev/php${VERSION}-fpm:alpine
LABEL maintainer="ITK Dev <itkdev@mkb.aarhus.dk>"

ENV APP_SUPERVISOR_COMMAND='sh -c "cowsay \"You should set the APP_SUPERVISOR_COMMAND too a command to run...\"; sleep infinity"' \
    APP_SUPERVISOR_WORKERS=1 \
    APP_SUPERVISOR_USER="deploy"

USER root

RUN apk --update add --no-cache \
        supervisor \
        inotify-tools

RUN apk --update add --no-cache --repository https://dl-3.alpinelinux.org/alpine/edge/testing cowsay

RUN docker-php-ext-configure pcntl --enable-pcntl \
  && docker-php-ext-install pcntl

# Install configuration template handler
ADD https://github.com/kelseyhightower/confd/releases/download/v0.16.0/confd-0.16.0-linux-amd64 /usr/local/bin/confd
RUN chmod +x /usr/local/bin/confd

# Copy confd onfiguration.
COPY etc/confd/conf.d/supervisor.toml /etc/confd/conf.d/supervisor.toml
COPY etc/confd/templates/supervisor.tmpl /etc/confd/templates/supervisor.tmpl

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

USER deploy

# Setup supervisor config.
COPY etc/supervisord.conf /home/deploy/supervisord.conf
RUN mkdir -p /home/deploy/supervisor.d/

CMD [ "/usr/local/bin/docker-entrypoint.sh" ]
