#!/bin/bash
#Script to be run when the container starts. Displays a countdown on stdout
#and also on a webserver
#Uses two environment variables:
#SECONDS: number of seconds to count down from
#PORT0: TCP port to be used for the web server

#get or assume number of seconds to count down from.
if [ "$SECONDS" -gt  0 ]; then
    echo "Countdown SET to "$SECONDS" seconds..."
else
    SECONDS=10;
    echo "Countdown DEFAULT to "$SECONDS" seconds..."
fi

#calculate date + SECONDS and count down until they're the same
date1=$((`date +%s` + $SECONDS));

while [ "$date1" -gt `date +%s` ]; do
  echo -ne "$(date -u --date @$(($date1 - `date +%s` )) +%H:%M:%S)\r";
done

