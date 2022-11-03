#!/bin/sh

set -eux

## Run templates with configuration.
/usr/local/bin/confd --onetime --backend env --confdir /etc/confd

## Start supervisor and the jobs.
exec supervisord --nodaemon --configuration /etc/supervisord.conf