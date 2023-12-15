FROM ubuntu:22:04

MAINTAINER airdb.com

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

ENV RUNNING_CONTEXT "docker"
ENV echo "export RUNNING_CONTEXT=docker" >> /etc/profile

RUN echo "export PS1='[\H \W]\\$ '" >> /root/.profile

ENV VERSION v5.1.1
ENV PKG oauth2_proxy-v5.1.1.linux-amd64.go1.14.2

ADD https://github.com/oauth2-proxy/oauth2-proxy/releases/download/${VERSION}/${PKG}.tar.gz /tmp

RUN cd /tmp/ && \
	tar xvf ${PKG}.tar.gz && \
	mv ${PKG}/oauth2_proxy /usr/bin && \
	rm -rf /tmp/${PKG} /tmp/${PKG}.tar.gz

ADD https://raw.githubusercontent.com/oauth2-proxy/oauth2-proxy/master/contrib/oauth2-proxy.cfg.example /etc/oauth2-proxy.cfg

CMD ["oauth2_proxy", "--config=/etc/oauth2-proxy.cfg"]
