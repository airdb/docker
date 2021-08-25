FROM golang

# docker build --platform linux/amd64 -t airdb/serverless . -f serverless.dockerfile
# docker run --platform linux/amd64 --rm --env-file ~/.env -v $(pwd):/srv airdb/serverless bash

ENV PYTHONUNBUFFERED=1

WORKDIR ${GOPATH}/src/airdb.io/airdb

RUN apt update && apt install -y \
	curl \
	git \
	vim


RUN echo "**** install serverless ****" && \
	curl -o- -L https://slss.io/install | bash

RUN go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
