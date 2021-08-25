FROM alpine:3.12

# docker build -t airdb/scf . -f scf.dockerfile
# docker run --rm --env-file ~/.env -v $(pwd):/srv airdb/scf

ENV PYTHONUNBUFFERED=1

WORKDIR /srv

# https://hub.docker.com/r/frolvlad/alpine-python3/dockerfile
RUN echo "**** install Python ****" && \
    apk add --no-cache python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --no-cache --upgrade pip setuptools wheel && \
    pip3 install --no-cache scf

CMD scf configure set --appid $TENCENTCLOUD_APPID \
	--region $TENCENTCLOUD_REGION \
	--secret-id $TENCENTCLOUD_SECRET_ID \
	--secret-key $TENCENTCLOUD_SECRET_KEY &&\
	scf deploy -t template.yaml -f --update-event
