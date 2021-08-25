FROM ubuntu:16.04
MAINTAINER  dean

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

ENV RUNNING_CONTEXT "docker"
ENV echo "export RUNNING_CONTEXT=docker" >> /etc/profile

RUN echo "export PS1='[\H \W]\\$ '" >> /root/.profile

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y curl && \
	apt-get install -y gcc g++ make && \
	curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
	apt-get install -y nodejs && \
	npm install -g @d2-admin/d2-admin-cli

WORKDIR /srv
