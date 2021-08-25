FROM  airdb/alpine
MAINTAINER  Dean <Dean@airdb.com>

# Build image: 
# docker build . --rm -t airdb/alpine-nginx -f  nginx.dockerfile
# Run Container:
# docker run -d --name access -p 80:80 -p 443:443 airdb/alpine-nginx

# Step 1: List service infomation and choose stable version.
ENV SERVICE Python
ENV VERSION 2.7.14
# ENV VERSION 3.6.3
ENV SERVICE_PKG ${SERVICE}-${VERSION}.tgz

# Step 2: Complie software from source code.
ENV HOMEDIR /srv
WORKDIR $HOMEDIR
ENV CONFIG "--prefix=$HOMEDIR/$SERVICE"

RUN apk add --no-cache --virtual .build-deps \
      gcc \
      libc-dev \
      make \
      openssl-dev \
      pcre-dev \
      zlib-dev \
      linux-headers \
      wget \
      jemalloc-dev \
      tcl-dev \
      file \
   && wget --no-check-certificate "https://www.python.org/ftp/python/$VERSION/${SERVICE_PKG}" -O /srv/${SERVICE_PKG} \
   && tar xf $HOMEDIR/${SERVICE_PKG} -C /srv \ 
   && cd $HOMEDIR/$SERVICE-$VERSION \
   && ./configure $CONFIG \
   && make \
   && make install \
   && rm -rf $HOMEDIR/$SERVICE-*

# Step 3: Configure default settings.
ENV PATH $PATH:$HOMEDIR/$SERVICE
#RUN ln -s /srv/python/bin/python3 /srv/python/bin/python

# step 4: Run it through docker.

EXPOSE 80
#CMD ["/srv/Python/bin/python3"]
CMD ["/srv/Python/bin/python"]
