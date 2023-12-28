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

COPY ./init/90-linux.sh /etc/profile.d/
COPY ./init/98-motd.sh /etc/profile.d/
COPY ./init/99-linux.sh  /etc/bash.bash_logout
COPY ./init/user_profile /root/.profile

CMD ["/bin/bash", "--login"]
