FROM alpine:latest as builder

WORKDIR /build

RUN cd /build/ && \
    wget http://nl.alpinelinux.org/alpine/latest-stable/releases/x86_64/alpine-minirootfs-3.17.0-x86_64.tar.gz && \
    tar xvf alpine-minirootfs-3.17.0-x86_64.tar.gz


FROM scratch

LABEL description="Alpine minirootfs lastet stable" \
      tags="latest 3.17.0" \
      maintainer="Dean <https://github.com/airdb/docker>" \
      build_ver="2022-1209_19:50"

# Must download file to local. if use url to add it, it doesn't unpack.
# wget http://nl.alpinelinux.org/alpine/latest-stable/releases/x86_64/alpine-minirootfs-3.7.0-x86_64.tar.gz
# ADD alpine-minirootfs-3.17.0-x86_64.tar.gz  /

COPY --from=builder /build /

RUN apk add --no-cache tzdata bash tar gzip
RUN cp /usr/share/zoneinfo/Asia/Singapore /etc/localtime

WORKDIR /app

CMD ["/bin/bash", "--login"]
