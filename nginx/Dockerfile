FROM nginx:22.04

ARG DEBIAN_FRONTEND=noninteractive

#RUN sed -i 's/ports.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list && \
RUN apt update && \
    apt install --no-install-recommends -y \
    vim git curl && \
    rm -rf /var/cache/apt/archives /var/lib/apt/lists/*

WORKDIR /srv/
COPY . /srv
RUN chown www-data.www-data -R /srv

CMD ["nginx-debug", "-g", "daemon off;"]
#CMD sleep 3600
