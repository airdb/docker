LABEL Maintainer="airdb team <info@airdb.com>"  Description="https://github.com/airdb"

FROM alpine:3.18

ENV SERVICE alpine
ENV VERSION 3.18
ENV RUNNING_CONTEXT docker

RUN apk add --no-cache --virtual .build-deps \
    bash \
    vim \
    git

#ENV RUNNING_CONTEXT="docker" \
#    LANGUAGE=en_US.UTF-8 \
#    LANG=en_US.UTF-8 \
#    LANGUAGE=en_US.UTF-8 \
#    PS1='[\H \W]\$ ' \

##ADD airdb.com.sh /etc/profile.d/
RUN echo 'set encoding=utf-8' >  ~/.vimrc && \
    echo 'bind "^W" ed-delete-prev-word' > ~/.editrc

RUN echo 'export HISTTIMEFORMAT="%Y-%m-%d %T \$LC_NAME \$SSH_TTY " ' >> /etc/profile

CMD ["/bin/sh", "/etc/profile"]
