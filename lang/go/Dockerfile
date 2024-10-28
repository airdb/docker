FROM golang:1.23.0 AS builder

WORKDIR /build

ADD ./ /build

RUN cd /build/ && \
    CGO_ENABLED=0 GOOS=linux go build -buildvcs=false -ldflags '-w -s' -o main


FROM airdb/alpine:latest

WORKDIR /app/

COPY --from=builder /build/main /app/

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "export PS1='python@\H \w\\$ '" >> /etc/profile

EXPOSE 8080



#ENTRYPOINT ["sleep", "3600"]
ENTRYPOINT ["/app/main"]