#!/bin/bash

## A linux learn container environment configuration.
## Author by Airdb Team @ 2015 - Now

## A linux learn container environment configuration.
## Author by Airdb Team @ 2015 - Now
export VISIBLE=now
export DEBIAN_FRONTEND=noninteractive
curl "$BUMUAPI/apis/v1/infra/linux/${HOSTNAME}?action=login" > /dev/null 2>&1

#export PS1='[\H \W]\\$ '
export PS1='\033[32m[\u@\H \W]\033[0m\\$ '

TMOUT=300

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
