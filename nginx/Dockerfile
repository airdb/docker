FROM nginx:latest

ARG DEBIAN_FRONTEND=noninteractive

#RUN sed -i 's/ports.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list && \
RUN    apt-get update

RUN apt-get install -y vim git curl

#RUN apt-get install -y nginx

#  apt-get install -y vim git nginx php7-fpm php-fpm

WORKDIR /srv/
COPY . /srv
RUN chown www-data.www-data -R /srv


CMD nginx-debug -g 'daemon off;'
#CMD sleep 3600
