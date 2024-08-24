FROM ubuntu:24.04

LABEL maintainer="airdb team <info@airdb.com>"
LABEL description="https://github.com/airdb"

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile && \
    echo "export DEBIAN_FRONTEND=noninteractive" >> /etc/profile && \
    echo 'set encoding=utf-8' >  ~/.vimrc && \
    echo 'bind "^W" ed-delete-prev-word' > ~/.editrc

RUN echo "export PS1='[\H \W]\\$ '" >> /root/.profile && \
    echo 'export HISTTIMEFORMAT="%Y-%m-%d %T $(pwd)" ' >> /etc/profile

# apt install dhcpd tftpd-hpa
# apt install isc-dhcp-server -y
# /etc/init.d/tftpd-hpa start
