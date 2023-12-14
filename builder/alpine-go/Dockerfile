FROM golang:1.21-alpine

LABEL maintainer="airdb team <info@airdb.com>"
LABEL description="https://github.com/airdb"

LABEL tags="latest v0.2.0"
LABEL buildtime ="2023-0928_0000"

#RUN apk add --no-cache --virtual .build-deps \
RUN apk add --no-cache --virtual \
      bash \
      git \
      vim \
      tzdata
