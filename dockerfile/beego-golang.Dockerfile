FROM golang:1.12.4

MAINTAINER Dean dean@airdb.com
# https://github.com/nginxinc/docker-nginx

RUN apt-get install -y git

RUN go get -u github.com/astaxie/beego

RUN go get -u github.com/beego/bee

RUN echo export GO111MODULE=on >> /etc/profile

ENV GO111MODULE on
ENV GOPROXY https://goproxy.io

RUN cd /go/src/github.com/astaxie/beego && go mod download
CMD ["/bin/bash"]
