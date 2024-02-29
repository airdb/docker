FROM ubuntu

# Usage:
# docker build -t airdb/fpm . -f fpm.dockerfile
# docker run --rm -v $(pwd):/srv airdb/fpm

ENV DEBIAN_FRONTEND noninteractive

LABEL maintainer="https://github.com/airdb"


RUN echo "export VISIBLE=now" >> /etc/profile

ENV RUNNING_CONTEXT "docker"
ENV echo "export RUNNING_CONTEXT=docker" >> /etc/profile

RUN echo "export PS1='[\H \W]\\$ '" >> /root/.profile

WORKDIR /srv

RUN apt update && apt-get install --no-install-recommends -y sudo vim libgcrypt-dev libgd-dev ruby ruby-dev rubygems-integration build-essential

#RUN gem install --no-ri --no-rdoc fpm
RUN gem install fpm

CMD fpm -s dir \
	-t deb \
	-a amd64 \
	-n airdb \
	-v 1.0.0  \
	-m 'Dean CN <deanh@airdb.com>' \
	--url 'https://www.airdb.com' \
	--description 'Hello airdb' \
	--before-install ./output/before-install.sh \
	--after-install ./output/after-install.sh \
	-C ./output/ 
