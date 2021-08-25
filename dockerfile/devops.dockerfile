FROM  airdb/alpine
MAINTAINER  Dean <Dean@airdb.com>

# Build image: 
# docker build . --rm -t airdb/alpine-nginx -f  nginx.dockerfile
# Run Container:
# docker run -d --name access -p 80:80 -p 443:443 airdb/alpine-nginx

# Step 1: List service infomation and choose stable version.
ENV SERVICE Python
# ENV VERSION 2.7.10
ENV VERSION 3.6.3
ENV SERVICE_PKG ${SERVICE}-${VERSION}.tgz

ENV LANG en_US.UTF-8
# ENV PS1 "[\u@\H \W]\$ "
ENV TIMEZONE Asia/Shanghai
ENV INITFILE /etc/profile.d/airdb.com.sh
ADD motd /etc/motd

# Step 2: Complie software from source code.
ENV HOMEDIR /srv
USER root
WORKDIR $HOMEDIR
ENV CONFIG "--prefix=$HOMEDIR/$SERVICE"

RUN apk add --no-cache --virtual .build-deps \
    bash \
    git \
    vim \
    openssh \
    tzdata

# Step 3: Configure default settings.
RUN cp /usr/share/zoneinfo/$TIMEZONE /etc/localtime
RUN echo $TIMEZONE > /etc/timezone

RUN sed -i 's#/root:/bin/ash#/root:/bin/bash#' /etc/passwd
RUN echo "#!/bin/sh" > $INITFILE \
    && echo "export PS1='[\u@\H \W]\$ '" >> $INITFILE \
    && echo "cat /etc/motd" >> $INITFILE \
    && echo "alias ll='ls -l --color=auto'" >> $INITFILE

# step 4: Run it through docker.

EXPOSE 80
CMD ["/bin/bash", "--login", "--init-file", "/etc/profile"]
