FROM golang:1.20-alpine

LABEL maintainer="airdb team <info@airdb.com>"
LABEL description="https://github.com/airdb"
LABEL buildtime="2023-0428_0028"
LABEL tags="latest v0.1.0"

RUN apk add --no-cache --virtual .build-deps \
    bash \
    git \
    vim \
    tzdata

RUn go install github.com/caddyserver/xcaddy/cmd/xcaddy@latest
