FROM ubuntu:16.04

MAINTAINER airdb.com

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

ENV RUNNING_CONTEXT "docker"
ENV echo "export RUNNING_CONTEXT=docker" >> /etc/profile

RUN echo "export PS1='[\H \W]\\$ '" >> /root/.profile

RUN apt-get install -y curl && \
	apt-get install -y gcc g++ make
