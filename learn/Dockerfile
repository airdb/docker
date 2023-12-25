FROM ubuntu:22.04

LABEL maintainer="airdb team <info@airdb.com>"
LABEL description="https://github.com/airdb"


RUN apt update && apt install --no-install-recommends -y \
    iputils-ping \
    less \
    netcat \
    wget \
    ca-certificates \
    git \
    vim \
    curl && \
    apt clean autoclean && \
    apt autoremove --yes && \
    rm -rf /var/cache/apt/archives /var/lib/apt/lists/*


ENV NOTVISIBLE "in users profile"
RUN echo 'set encoding=utf-8' >  ~/.vimrc && \
    echo 'bind "^W" ed-delete-prev-word' > ~/.editrc

COPY ./init/. /etc/profile.d/

RUN cat <<EOF >> /root/.profile

## A linux learn container environment configuration.
## Author by Airdb Team @ 2015 - Now
export VISIBLE=now
export DEBIAN_FRONTEND=noninteractive
export PS1='\033[32m[\u@\H \W]\033[0m\\$ '

TMOUT=300
EOF

CMD ["/bin/bash", "--login"]
