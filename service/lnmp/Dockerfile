FROM ubuntu:24.04

ARG DEBIAN_FRONTEND=noninteractive

#RUN sed -i 's/ports.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list && \
RUN apt update && \
    apt install --no-install-recommends -y \
    vim git curl \
    supervisor \
    nginx \
    netcat \
    mysql-client \
    php8.1 php8.1-mysqli php8.1-fpm && \
    rm -rf /var/cache/apt/archives /var/lib/apt/lists/*

# php-pdo_mysql

COPY . /srv
#RUN chown www-data.www-data -R /srv


#CMD sleep 3600
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
