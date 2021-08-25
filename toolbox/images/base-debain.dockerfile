FROM debian:latest

MAINTAINER Dean dean@airdb.com

# apt-get source
RUN echo deb http://mirrors.aliyun.com/debian/ jessie main non-free contrib | tee /etc/apt/sources.list
RUN echo deb http://mirrors.aliyun.com/debian/ jessie-proposed-updates main non-free contrib | tee -a /etc/apt/sources.list
RUN echo deb-src http://mirrors.aliyun.com/debian/ jessie main non-free contrib | tee -a /etc/apt/sources.list
RUN echo deb-src http://mirrors.aliyun.com/debian/ jessie-proposed-updates main non-free contrib | tee -a /etc/apt/sources.list

RUN apt-get update

RUN apt-get install -y sudo vim
#ENTRYPOINT apt-get update

RUN rm -rf /var/cache/*

# env init
RUN ln -sf /bin/bash /bin/sh
RUN echo "cd \$HOME" | tee -a /etc/bash.bashrc

# user init
RUN useradd -m -k /etc/skel/ work
RUN echo "work        ALL=(ALL)       NOPASSWD: ALL" > /etc/sudoers.d/work
RUN chmod 440 /etc/sudoers.d/work
