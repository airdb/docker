FROM  airdb/alpine
MAINTAINER  Dean <Dean@airdb.com>
# Build image: 
# docker build . --rm -t airdb/alpine-nginx -f  nginx.dockerfile
# Run Container:
# docker run -d --name access -p 80:80 -p 443:443 airdb/alpine-nginx

# Step 1: List service infomation and choose stable version.
ENV SERVICE nginx
ENV VERSION 1.12.2
ENV SERVICE_PKG ${SERVICE}-${VERSION}.tar.gz

# Step 2: Complie software from source code.
ENV HOMEDIR /srv
WORKDIR $HOMEDIR
#ENV CONFIG "--prefix=$HOMEDIR/$SERVICE --with-stream"

# RUN apk add --no-cache --virtual .build-deps \
#       gcc \
#       libc-dev \
#       make \
#       openssl-dev \
#       pcre-dev \
#       zlib-dev \
#       linux-headers \
#       wget \
#       jemalloc-dev \
#    && wget "http://nginx.org/download/${SERVICE_PKG}" -O /srv/${SERVICE_PKG} \
#    && tar xf $HOMEDIR/${SERVICE_PKG} -C /srv \ 
#    && cd $HOMEDIR/$SERVICE-$VERSION \
#    && ./configure $CONFIG \
#    && make \
#    && make install \
#    && rm -rf $HOMEDIR/$SERVICE-*
RUN apk add --no-cache --virtual .build-deps nginx

# Step 3: Configure default settings.
#ADD nginx/nginx.conf $HOMEDIR/$SERVICE/conf/
#ADD nginx/conf.d/default.conf $HOMEDIR/$SERVICE/conf/conf.d/

# step 4: Run it through docker.
WORKDIR $HOMEDIR/$SERVICE

EXPOSE 80 443
#CMD ["/srv/nginx/sbin/nginx", "-c", "/srv/nginx/conf/nginx.conf", "-g", "daemon off;"]
