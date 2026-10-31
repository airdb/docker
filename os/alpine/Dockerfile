FROM alpine:3.23

LABEL maintainer="airdb team <info@airdb.com>"
LABEL description="https://github.com/airdb/docker"

ENV AIRDB_RUNNING_CONTEXT docker

RUN apk add --no-cache --virtual .build-deps \
    tzdata tar gzip \
    netcat-openbsd \
    bash bash-completion ca-certificates

# Setup bash as default shell.
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "export PS1='alpine@\H \w\\$ '" >> /etc/profile &&  \
    sed -i '/root/s/ash/bash/g' /etc/passwd


RUN echo 'alias cu="t1=\$(stat -c %Y /proc/1); t2=\$(date +%s); diff=\$((t2 - t1)); echo \"Start Time: \$(stat -c '\''%y'\'' /proc/1)\"; echo \"Uptime: \$((diff / 86400))d \$(((diff % 86400) / 3600))h \$(((diff % 3600) / 60))m \$((diff % 60))s\""' >> ~/.bashrc

WORKDIR /opt

CMD ["/bin/bash", "--login"]
