#!/bin/bash
#
## A linux learn container environment configuration.
## Author by Airdb Team @ 2015 - Now
export VISIBLE=now
export DEBIAN_FRONTEND=noninteractive
curl "$BUMUAPI/apis/v1/infra/linux/${HOSTNAME}?action=logout" > /dev/null 2>&1
