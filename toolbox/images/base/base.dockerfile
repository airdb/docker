FROM alpine:3.9.4
MAINTAINER airdb.com

# Step 1: List service infomation and choose stable version.
ENV SERVICE ci-lint
ENV PS1 '[\H \W]\$ '
ENV PASSWD airdb.com

ADD https://raw.githubusercontent.com/airdb/docker/master/templates/motd /etc/motd
ADD https://raw.githubusercontent.com/airdb/docker/master/osinit/run_lint.sh /bin/
ADD https://raw.githubusercontent.com/airdb/docker/master/osinit/authorized_keys /root/.ssh/

#ADD airdb.com.sh /etc/profile.d/
ENV HOMEDIR /srv
WORKDIR $HOMEDIR

RUN apk add --update --no-cache --virtual .build-deps \
      curl \
      git \
      vim \
      sudo \
      openssh-server \
      openssh \
    && sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
    && echo "AcceptEnv LC_*" >> /etc/ssh/sshd_config \
    && echo root:${PASSWD} | chpasswd \
    && /usr/bin/ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key \
    && /usr/bin/ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key \
    && /usr/bin/ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key \
    && /usr/bin/ssh-keygen -t dsa -f /etc/ssh/ssh_host_ed25519_key

    # && sed -i s@#Banner\ none@Banner\ /etc/banner@ /etc/ssh/sshd_config \


ENV RUNNING_CONTEXT "docker"
RUN echo "export RUNNING_CONTEXT=docker" >> /etc/profile
RUN echo "export PS1='[\H \W]\\$ '" >> /etc/profile
RUN echo "export PATH='$PATH:$HOME/go/bin'" >> /etc/profile
RUN echo "export GO111MODULE=on" >> /etc/profile
RUN echo 'export HISTTIMEFORMAT="%Y-%m-%d %T \$LC_NAME \$SSH_TTY " ' >> /etc/profile

ADD https://raw.githubusercontent.com/airdb/docker/master/templates/sudoers.d/vagrant /etc/sudoers.d/
RUN chmod +x /bin/run_lint.sh

EXPOSE 22
CMD /bin/run_lint.sh
