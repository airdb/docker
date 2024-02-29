FROM node

LABEL maintainer="https://github.com/airdb"

# https://github.com/nginxinc/docker-nginx

WORKDIR /srv
RUN git clone https://github.com/airdb/fcweb

WORKDIR /srv/fcweb
RUN npm config set registry https://registry.npm.taobao.org
RUN npm install
RUN npm run build

CMD ["/bin/bash"]
