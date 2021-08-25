FROM golang

MAINTAINER Copyright @ airdb.com

ENV GO111MODULE on
RUN echo "export PS1='[\H \W]\\$ '" >> /root/.profile
RUN go get -u github.com/golangci/golangci-lint/cmd/golangci-lint

ENTRYPOINT ["/bin/bash", "-c", "cd /go/src/github.com\"$@\" && /go/bin/golangci-lint run", "--"]
