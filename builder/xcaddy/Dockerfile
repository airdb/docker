FROM golang:1.20-alpine

LABEL description="airdb build" \
      tags="latest v0.1.0" \
      maintainer="airdb.team <https://github.com/airdb/docker>" \
      build_ver="2023-0428_0028"
 
RUN apk add --no-cache --virtual .build-deps \
    bash \
    git \
    vim \
    tzdata

RUn go install github.com/caddyserver/xcaddy/cmd/xcaddy@latest
