FROM itkdev/php7.4-fpm:alpine
LABEL maintainer="ITK Dev <itkdev@mkb.aarhus.dk>"

ENV TZ=Europe/Copenhagen

RUN apk add --update --no-cache \
    libgcc libstdc++ libx11 glib libxrender libxext libintl \
    ttf-dejavu ttf-droid ttf-freefont ttf-liberation

COPY --from=madnight/docker-alpine-wkhtmltopdf /bin/wkhtmltopdf /bin/wkhtmltopdf
COPY --from=madnight/docker-alpine-wkhtmltopdf /usr/lib/libssl.so.1.1 /usr/lib/libssl.so.1.1
COPY --from=madnight/docker-alpine-wkhtmltopdf /usr/lib/libcrypto.so.1.1 /usr/lib/libcrypto.so.1.1

RUN apk add shadow && \
groupmod -g 1042 deploy && \
usermod -u 1042 -g 1042 deploy
