FROM ubuntu:22:04
#FROM ubuntu:22:04
MAINTAINER  dean

RUN apt update && apt install -y curl openssh-server lsb-core sudo
RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

RUN echo "vagrant ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/README
RUN echo "Defaults:vagrant !requiretty" >> /etc/sudoers.d/README
ADD https://raw.githubusercontent.com/airdb/docker/master/osinit/authorized_keys /root/.ssh/
ADD https://raw.githubusercontent.com/airdb/docker/master/templates/vim/.vimrc /root/

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

ENV RUNNING_CONTEXT "docker"
ENV echo "export RUNNING_CONTEXT=docker" >> /etc/profile

RUN echo "export PS1='[\H \W]\\$ '" >> /root/.profile

WORKDIR /srv
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
