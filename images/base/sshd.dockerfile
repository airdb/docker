FROM alpine:3.9.4
MAINTAINER airdb.com

# Run Container:
# docker run -d --name access airdb/alpine-toolbox

# Step 1: List service infomation and choose stable version.
ENV SERVICE relay
ENV PS1 '[\H \W]\$ '
ENV PASSWD airdb.com

ADD https://raw.githubusercontent.com/airdb/docker/master/templates/motd /etc/motd
ADD https://github.com/airdb/adb/releases/download/v1.0.0/adb /bin/

ENV HOMEDIR /srv
WORKDIR $HOMEDIR

RUN apk add --update --no-cache --virtual .build-deps \
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
RUN echo 'export HISTTIMEFORMAT="%Y-%m-%d %T \$LC_NAME \$SSH_TTY " ' >> /etc/profile

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
