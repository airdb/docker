FROM golang:1.18

LABEL description="airdb build" \
      tags="latest v0.1.0" \
      maintainer="Dean <https://github.com/airdb/docker>" \
      build_ver="2023-0405_1711"
 
RUN cp /usr/share/zoneinfo/Asia/Singapore /etc/localtime

WORKDIR /srv

CMD ["/bin/bash", "--login"]
