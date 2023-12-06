LABEL Maintainer="airdb team <info@airdb.com>"  Description="https://github.com/airdb"

FROM ubuntu:22.04

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
RUN echo "export DEBIAN_FRONTEND=noninteractive" >> /etc/profile
RUN echo 'set encoding=utf-8' >  ~/.vimrc && \
    echo 'bind "^W" ed-delete-prev-word' > ~/.editrc

RUN echo "export PS1='[\H \W]\\$ '" >> /root/.profile
