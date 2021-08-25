FROM scratch

LABEL description="Alpine minirootfs lastet stable" \
      tags="latest 3.7.0" \
      maintainer="Dean <https://github.com/airdb/docker>" \
      build_ver="20171123143200"

# Must download file to local. if use url to add it, it doesn't unpack.
# wget http://nl.alpinelinux.org/alpine/latest-stable/releases/x86_64/alpine-minirootfs-3.7.0-x86_64.tar.gz
 
ADD alpine-minirootfs-3.7.0-x86_64.tar.gz  /
ADD motd /etc/motd
ADD Shanghai /etc/localtime
ADD airdb.com.sh /etc/profile.d/

WORKDIR /srv

CMD ["/bin/sh", "--login"]
