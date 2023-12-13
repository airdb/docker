FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

#RUN sed -i 's/ports.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list && \
RUN    apt-get update

RUN apt-get install -y vim git curl

RUN apt-get install -y nginx

RUN apt-get install -y php
RUN apt-get install -y php-mysqli
#RUN apt-get install -y php-pdo_mysql
RUN apt-get install -y mysql-client
RUN apt-get install -y php-fpm
#  apt-get install -y vim git nginx php7-fpm php-fpm

COPY . /srv
RUN chown www-data.www-data -R /srv


CMD /etc/init.d/php7.2-fpm start && nginx -g 'daemon off;'
#CMD sleep 3600
