FROM alpine:latest as builder

WORKDIR /build

RUN cd /build/ && \
    wget http://nl.alpinelinux.org/alpine/latest-stable/releases/x86_64/alpine-minirootfs-3.19.0-x86_64.tar.gz && \
    tar xvf alpine-minirootfs-3.19.0-x86_64.tar.gz


FROM scratch

LABEL Issue="Alpine minirootfs lastet stable 3.19.0" \
      build_ver="2022-1209_19:50"

LABEL Maintainer="airdb team <info@airdb.com>"  Description="https://github.com/airdb"

ENV OS_NAME alpine
ENV OS_VERSION 3.19
ENV RUNNING_CONTEXT docker

COPY --from=builder /build /

RUN apk add --no-cache --virtual .build-deps \
    tzdata tar gzip bash bash-doc bash-completion \
    bash \
    vim \
    git


RUN cp /usr/share/zoneinfo/Asia/Singapore /etc/localtime

# Set bash as default shell.
RUN sed -i '/root/s/ash/bash/g' /etc/passwd

WORKDIR /app

CMD ["/bin/bash", "--login"]
