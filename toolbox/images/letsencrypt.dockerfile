FROM airdb/alpine

LABEL description="Letsencrypt based on alpine" \
      tags="latest 1.0.0 0.14" \
      maintainer="Dean <https://github.com/airdb/docker>" \
      build_ver="20171123143200"


RUN BUILD_DEPS="py2-pip \
       gcc \
       musl-dev \
       python2-dev \
       libffi-dev \
       openssl-dev" \
    && apk add -U ${BUILD_DEPS} \
       tini \
       dialog \
       python \
       libssl1.0 \
    && pip install --no-cache virtualenv \
    && virtualenv --no-site-packages -p python2 /usr/certbot/venv \
    && /usr/certbot/venv/bin/pip install --no-cache-dir certbot==$CERTBOT_VER \
    && pip uninstall --no-cache-dir -y virtualenv \
    && apk del ${BUILD_DEPS} \
    && rm -rf /var/cache/apk/* /root/.cache/pip

EXPOSE 80

# Expose volume for adding credentials
VOLUME ["~/.aws"]

ENTRYPOINT ["pwd"]
CMD ["--help"]
