#!/bin/sh
TIMEOUT=$(grep "TIMEOUT=" ./config.ini | grep -o "[0-9]*")

while [ true ]
do
    rm index.html
    wget -q	 http://meteo.by/minsk/
    echo `head -n 266 index.html | tail -n 1 `
    sleep $TIMEOUT
done

