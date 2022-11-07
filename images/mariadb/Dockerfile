FROM mariadb:10.6
MAINTAINER ITK dev <itkdev@mkb.aarhus.dk>

# Copy configuration
COPY docker.cnf /etc/mysql/conf.d/docker.cnf

CMD [ "/usr/local/bin/docker-entrypoint.sh", "mysqld" ]
