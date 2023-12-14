FROM ubuntu:bionic

LABEL maintainer="airdb team <info@airdb.com>"
LABEL description="Discuz! X container with Nginx & PHP-FPM based on Ubuntu bionic."

ARG DEBIAN_FRONTEND=noninteractive
ARG TZ=Asia/Shanghai

RUN apt update &&  \
    apt install --no-install-recommends -y wget tzdata apt-utils && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    apt upgrade -y && \
    apt install -y --no-install-recommends ca-certificates php-fpm nginx openssl php-mysql php-gd php-bcmath php-mbstring php-xml php-curl && \
    apt install -y --no-install-recommends mysql-client iputils-ping vim unzip && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /run/php 

COPY root /

# https://www.discuz.net/daily/
ADD "https://www.discuz.net/daily/?dl=DZX-SC_UTF8-v3.4-202006050500-931ea4f2.zip" /tmp/DiscuzX/DiscuzX.zip

WORKDIR /tmp/DiscuzX
RUN unzip DiscuzX.zip  && \
    rm -rf upload/instal && \
    mv upload /var/www/discuz

#RUN cd /tmp && \
#	wget https://gitee.com/ComsenzDiscuz/DiscuzX/repository/archive/v3.4-20191201?format=tar.gz -O /tmp/DiscuzX.tar.gz && \
#	tar xvf /tmp/DiscuzX.tar.gz  && \
#	rm -rf /tmp/DiscuzX/upload/install && \
#	mv /tmp/DiscuzX/upload /var/www/discuz

RUN chown -R www-data:www-data /var/www/discuz

EXPOSE 80 443

CMD ["/usr/sbin/supervisord", "-c", "/etc/supervisord.conf"]
