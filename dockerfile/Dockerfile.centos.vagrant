FROM  centos
MAINTAINER  dean

ENV PASSWD test

RUN yum -y install epel-release
RUN yum -y install sudo
RUN yum install -y openssh-server openssh-clients \
    && sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
    && echo root:${PASSWD} | chpasswd \
    && /usr/bin/ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key \
    && /usr/bin/ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key \
    && /usr/bin/ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key \
    && /usr/bin/ssh-keygen -t dsa -f /etc/ssh/ssh_host_ed25519_key 

RUN echo "vagrant ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/worker
RUN echo "Defaults:vagrant !requiretty" >> /etc/sudoers.d/worker

ADD authorized_keys /root/.ssh/

RUN echo "export PS1=\"[\u@\H \W]\$ \"" >> /etc/profile.d/airdb.com.sh

CMD ["/usr/sbin/sshd", "-D"]
