FROM ubuntu:24.04

LABEL maintainer="Dean <Dean@airdb.com>"

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

ENV RUNNING_CONTEXT "docker"
RUN echo "export RUNNING_CONTEXT=docker" >> /etc/profile

RUN echo "export PS1='ubuntu@\H \w\\$ '" >> /root/.profile



WORKDIR /srv

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && \
	apt install -y curl git less vim && \
	apt install -y gcc g++ make


## Install network releated deb package.
RUN apt install -y --reinstall ca-certificates && \
	apt install -y net-tools iproute2 iputils-ping telnet nmap netcat-openbsd
