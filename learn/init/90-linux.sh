#!/bin/bash

## A linux learn container environment configuration.
## Author by Airdb Team @ 2015 - Now

export BUMUAPI="https://bumu.fly.dev"
#export BUMUAPI="http://sg.airdb.host:8000"

# Initialize variable to store the last command executed
lastcmd=""

# Use the DEBUG trap to capture each command
function capture_lastcmd() {
  #lastcmd=$BASH_COMMAND
  lastcmd=$(history 1 | sed 's/^[ ]*[0-9]\+  //' )
}

# Use the PROMPT_COMMAND to send the command to the API
function send_lastcmd_to_api() {
  #echo "lastcmd: " $lastcmd
  # Check if the command is empty
  if [[ -z "$lastcmd" ]] || [[ "$lastcmd" == "$PROMPT_COMMAND" ]]; then
    return
  fi

  # Create JSON data
  json_data=$(printf '{"hostname": "%s", "action": "%s"}\n' "$HOSTNAME" "$lastcmd")

  #set -x
  # Use curl to send the data
  curl -X POST "$BUMUAPI/apis/v1/infra/linux/${HOSTNAME}" \
    -H "Content-Type: application/json" \
    -d "$json_data" -s 2>&1 1>/dev/null

  set +x
  # Reset lastcmd to prevent duplicate sending
  lastcmd=""
}

# Set the DEBUG trap and PROMPT_COMMAND
trap 'capture_lastcmd' DEBUG

PROMPT_COMMAND="send_lastcmd_to_api"
