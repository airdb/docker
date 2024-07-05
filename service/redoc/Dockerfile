FROM node

LABEL maintainer="https://github.com/airdb"



WORKDIR /srv

RUN git clone https://github.com/Redocly/redoc /srv/redoc
RUN cd /srv/redoc && \
	npm install 

#  Custom the configs.
RUN cd /srv/redoc && \
	sed -i '/port: 9090/i\   host: "0.0.0.0",' demo/webpack.config.ts && \
	sed -i "/const demos = /a\   { label: 'UIC', value: 'https://scf.baobeihuijia.com/test/uic/swagger/doc.json'}," demo/index.tsx


WORKDIR /srv/redoc

#CMD ["/bin/bash"]
#CMD npm run start:demo
CMD ["npm", "run",  "start:demo"]
