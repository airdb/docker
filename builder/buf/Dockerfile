FROM golang:1.21-alpine

LABEL description="airdb builder" \
      tags="latest v0.2.0" \
      maintainer="airdb.team <https://github.com/airdb/docker>" \
      build_ver="2023-1008_0000"
 
RUN apk add --no-cache --virtual .build-deps \
    bash \
    git \
    vim \
    tzdata

#	go install github.com/bufbuild/protoc-gen-validate@latest
RUN 	go install github.com/bufbuild/buf/cmd/buf@latest && \
	go install google.golang.org/protobuf/cmd/protoc-gen-go@latest && \
	go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest && \
	go install github.com/go-kratos/kratos/cmd/protoc-gen-go-http/v2@latest && \
	go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2@latest && \
	go install github.com/google/wire/cmd/wire@latest && \
	go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway@latest && \
	go install github.com/PaulXu-cn/go-mod-graph-chart/gmchart@latest && \
	go install github.com/envoyproxy/protoc-gen-validate@latest && \
	go install google.golang.org/protobuf/cmd/protoc-gen-go@latest && \
	go install github.com/lyft/protoc-gen-star/protoc-gen-debug@latest

RUN rm -rf /go/pkg



