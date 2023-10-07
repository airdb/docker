FROM golang:1.21-alpine

LABEL description="airdb builder" \
      tags="latest v0.2.0" \
      maintainer="airdb.team <https://github.com/airdb/docker>" \
      build_ver="2023-0928_0000"
 
RUN apk add --no-cache --virtual .build-deps \
    bash \
    git \
    vim \
    tzdata
