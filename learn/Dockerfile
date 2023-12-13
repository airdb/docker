FROM ubuntu:22.04

LABEL maintainer="airdb team <info@airdb.com>"
LABEL description="https://github.com/airdb"


RUN apt-get update && apt-get install --no-install-recommends -y \
    iputils-ping \
    netcat \
    wget \
    git \
    curl && \
    apt-get clean autoclean && \
    apt-get autoremove --yes && \
    rm -rf /var/cache/apt/archives /var/lib/apt/lists/*


ENV NOTVISIBLE "in users profile"
RUN echo 'set encoding=utf-8' >  ~/.vimrc && \
    echo 'bind "^W" ed-delete-prev-word' > ~/.editrc


RUN cat <<EOF >> /root/.profile

## A linux learn container environment configuration.
## Author by Airdb Team @ 2015 - Now
export VISIBLE=now
export DEBIAN_FRONTEND=noninteractive
#export PS1='[\H \W]\\$ '
export PS1="\033[32m[\u@\H \W]\033[0m$ "

echo -e "\033[32m=================================================================\033[0m"
echo -e "\033[32m|     Welcome to use the docker container, an environment        |\033[0m"
echo -e "\033[32m|     for Linux Operating System learning and practice.          |\033[0m"
echo -e "\033[32m|                                                                |\033[0m"
echo -e "\033[32m|             Handbook: https://airdb.wiki/os/linux              |\033[0m"
echo -e "\033[32m|                                                                |\033[0m"
echo -e "\033[32m|              Enjoy your study journey!                         |\033[0m"
echo -e "\033[32m|              Okay, let's get started!                          |\033[0m"
echo -e "\033[32m|                                                                |\033[0m"
echo -e "\033[32m|                       Created By airdb.team.                   |\033[0m"
echo -e "\033[32m|                 https://github.com/airdb/docker                |\033[0m"
echo -e "\033[32m=================================================================\033[0m"

EOF


CMD ["/bin/bash", "--login"]