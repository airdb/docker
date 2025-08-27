#!/bin/bash

OPENSSL_VERSION=openssl-3.5.2
NGINX_VERSION=release-1.29.1
BUILDDIR="/build/"

function deps() {
    apt update

    apt install --no-install-recommends -y \
    vim git curl \
    wget patch dos2unix mercurial \
    liblua5.4-dev unzip dh-autoreconf \
    ca-certificates \
    make gcc zlib1g-dev libpcre3-dev

    apt install -y rustc cargo
}

function download() {
    cd /build/
    git clone --depth=1 -b ${OPENSSL_VERSION} https://github.com/openssl/openssl
    git clone --depth=1 -b ${NGINX_VERSION} https://github.com/nginx/nginx
    git clone --depth=1 -b v0.1.1 https://github.com/nginx/nginx-acme
    git clone --depth=1 -b master  https://github.com/ip2location/ip2location-nginx
    git clone --depth=1 -b master https://github.com/ipipdotnet/nginx-ipip-module
    git clone --depth=1 -b v1.0.2 https://github.com/phuslu/nginx-ssl-fingerprint
    git clone --depth=1 -b v0.1.1 https://github.com/nginx/nginx-acme
}


function patch_nginx() {
        #ADD patches/ /build/nginx-ssl-fingerprint/patches/
#ADD src/ /build/nginx-ssl-fingerprint/src/
#ADD config nginx.conf /build/nginx-ssl-fingerprint/

#RUN patch -p1 -d openssl < nginx-ssl-fingerprint/patches/openssl.1_1_1.patch && \
#    patch -p1 -d nginx < nginx-ssl-fingerprint/patches/nginx.patch && \
#    cd nginx && \
#    ASAN_OPTIONS=symbolize=1 ./auto/configure --with-openssl=$(pwd)/../openssl --add-module=$(pwd)/../nginx-ssl-fingerprint --with-http_ssl_module --with-stream_ssl_module --with-debug --with-stream --with-cc-opt="-fsanitize=address -O -fno-omit-frame-pointer" --with-ld-opt="-L/usr/local/lib -Wl,-E -lasan" && \
}

function configure() {
    cd ${BUILDDIR}/nginx

    auto/configure \
    --with-compat \
    --with-http_ssl_module \
    --with-openssl=${BUILDDIR}/openssl \
    --add-module=${BUILDDIR}/nginx-acme
}

function make() {
    make
    make install
}

function  main() {
    mkdir -p /build
    #deps
    configure
    #build
}


main $1
