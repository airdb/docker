FROM alpine:3.22

LABEL maintainer="airdb team <info@airdb.com>"
LABEL description="https://github.com/airdb/docker"

ENV AIRDB_RUNNING_CONTEXT docker

RUN apk add --no-cache --virtual .build-deps \
    tzdata tar gzip bash bash-completion ca-certificates

# Setup bash as default shell.
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "export PS1='alpine@\H \w\\$ '" >> /etc/profile &&  \
    sed -i '/root/s/ash/bash/g' /etc/passwd

WORKDIR /opt

CMD ["/bin/bash", "--login"]
