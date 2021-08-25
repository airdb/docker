FROM  airdb/alpine
MAINTAINER  Dean <Dean@airdb.com>

# Build image: 
# docker build . --rm -t airdb/alpine-nginx -f  nginx.dockerfile
# Run Container:
# docker run -d --name access airdb/alpine-toolbox

# Step 1: List service infomation and choose stable version.
ENV SERVICE toolbox
ENV VERSION 1.12.2

RUN apk add --no-cache --virtual .build-deps \
    bash \
    mysql-client \
    nmap \
    redis \
    vim \
    fping \
    openssh-server \
    openssh \
    git \
    subversion
CMD ["/bin/sh", "/etc/profile"]
