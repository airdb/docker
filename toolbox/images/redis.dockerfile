FROM  airdb/alpine
MAINTAINER  Dean <Dean@airdb.com>

# Build image: 
# docker build . --rm -t airdb/alpine-nginx -f  nginx.dockerfile
# Run Container:
# docker run -d --name access airdb/alpine-toolbox

# Step 1: List service infomation and choose stable version.
ENV SERVICE relay
ENV PASSWD airdb.com

ENV HOMEDIR /srv
WORKDIR $HOMEDIR

RUN apk add --update --no-cache --virtual .build-deps redis

CMD ["/bin/sh"]
