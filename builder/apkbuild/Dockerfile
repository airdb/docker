FROM  airdb/alpine:latest
LABEL maintainer="https://github.com/airdb"


# Build image: 
# docker build . --rm -t airdb/alpine-nginx -f  nginx.dockerfile
# Run Container:
# docker run -d --name access airdb/alpine-toolbox

# Step 1: List service infomation and choose stable version.

#ADD motd /etc/motd
#ADD airdb.com.sh /etc/profile.d/
#ENV HOMEDIR /srv
#WORKDIR $HOMEDIR
ENV USER builder

#RUN apk add --update --no-cache --virtual .build-deps  \
RUN apk add --no-cache alpine-sdk vim \
    && adduser -D $USER \
    && addgroup $USER abuild \
    && echo "$USER	ALL=(ALL)	NOPASSWD: ALL" > /etc/sudoers.d/work \
    && chmod 600 /etc/sudoers.d/work \
    && mkdir -p /var/cache/distfiles \
    && chmod a+w /var/cache/distfiles \
    && chgrp abuild /var/cache/distfiles \
    && chmod g+w /var/cache/distfiles

USER $USER
WORKDIR /home/$USER

RUN abuild-keygen -a -i -n \
    && git config --global user.name "Dean" \
    && git config --global user.email "dean@airdb.com" \
    && git clone https://github.com/alpinelinux/aports


#EXPOSE 22
#CMD ["/bin/sh", "--login"]
