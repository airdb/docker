FROM ubuntu:22.04

LABEL maintainer="airdb team <info@airdb.com>"
LABEL description="https://github.com/airdb"


WORKDIR /srv/builder

RUN apt update && apt install --no-install-recommends -y \
	dpkg-dev

# Usage:
# dpkg -b . /tmp/my-package_1.0.0_amd64.deb
