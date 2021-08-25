FROM centos:7.2.1511

MAINTAINER Dean dean@airdb.com
# https://github.com/nginxinc/docker-nginx

ADD http://mirrors.aliyun.com/repo/Centos-7.repo /etc/yum.repos.d/
RUN yum install -y epel-release

RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

RUN yum install -y php71w-xml php71w-process php71w-mbstring \
                   php71w-mysql php71w-gd php71w-common php71w-cli \
                   php71w-pear php71w-opcache php71w-bcmath \
                   php71w-pdo php71w-devel php71w-fpm \
                   php71w-pecl-imagick mod_php71w php71w-pecl-apcu


CMD ["/bin/bash"]
