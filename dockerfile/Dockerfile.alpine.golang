FROM  airdb/alpine
MAINTAINER  Dean <Dean@airdb.com>

# Build image: 
# docker build . --rm -t airdb/alpine-nginx -f  nginx.dockerfile
# Run Container:
# docker run -d --name access airdb/alpine-toolbox

# Step 1: List service infomation and choose stable version.
# ENV SERVICE go
# ENV VERSION 1.9.2
# ENV SERVICE_PKG $SERVICE$VERSION.linux-amd64.tar.gz
#wget https://redirector.gvt1.com/edgedl/go/go1.4.linux-amd64.tar.gz

#ENV LANG en_US.UTF-8
#ENV PS1 "[\u@\H.airdb.io \W]\$ "
#ENV HOMEDIR /srv
# WORKDIR $HOMEDIR
ENV GOPATH /srv

# bash \
# openssh \
#    mysql-client \
#    vim \
#    ca-certificates \
#    wget \
RUN apk add --no-cache --virtual .build-deps go git
#     vim \
#     git 

# RUN wget https://redirector.gvt1.com/edgedl/go/$SERVICE_PKG -O $HOMEDIR/$SERVICE_PKG \
#    && tar xf $HOMEDIR/${SERVICE_PKG} -C  $HOMEDIR

VOLUME ["/srv"]
# CMD ["/bin/sh", "--login"]
CMD ["/usr/bin/go"]
