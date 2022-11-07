FROM alpine:3
# Add mailhog user/group with uid/gid 1000.
# This is a workaround for boot2docker issue #581, see
# https://github.com/boot2docker/boot2docker/issues/581
RUN adduser -D -u 1000 mailhog

RUN apk upgrade --no-cache

COPY --from=mailhog/mailhog /usr/local/bin/MailHog /usr/local/bin/

USER mailhog

# Expose the SMTP and HTTP ports:
EXPOSE 1025 8025

WORKDIR /home/mailhog

ENTRYPOINT ["MailHog"]
