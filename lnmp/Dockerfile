FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

#RUN sed -i 's/ports.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list && \
RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    vim git curl \
    supervisor \
    nginx \
    mysql-client \
    php php-mysqli php-fpm && \
    rm -rf /var/cache/apt/archives /var/lib/apt/lists/*

# php-pdo_mysql

COPY . /srv
RUN chown www-data.www-data -R /srv


#CMD sleep 3600
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
