# syntax = edrevo/dockerfile-plus

#MAINTAINER https://github.com/airdb

## The INCLUDE+ instruction gets imported by the first line in the Dockerfile. 
## You can read more about the dockerfile-plus at https://github.com/edrevo/dockerfile-plus
## Remember that the file path is relative to the build context, not the Dockerfile path.
## It depends on docker-compose.yaml in this repo.
INCLUDE+ ./dockerfile/Dockerfile.ubuntu.base

#FROM ubuntu:22:04

#ENV NOTVISIBLE "in users profile"
#RUN echo "export VISIBLE=now" >> /etc/profile
#
#ENV RUNNING_CONTEXT "docker"
#ENV echo "export RUNNING_CONTEXT=docker" >> /etc/profile
#
#RUN echo "export PS1='[\H \W]\\$ '" >> /root/.profile
#
#ENV NOTVISIBLE "in users profile"
#RUN echo "export VISIBLE=now" >> /etc/profile
#
#WORKDIR /srv
#RUN apt update && \
#	apt install -y curl less && \
#	apt install -y gcc g++ make
#
#RUN DEBIAN_FRONTEND=noninteractive apt install -y --reinstall ca-certificates nmap
