#!/bin/sh
TIMEOUT=$(grep "TIMEOUT=" ./config.ini | grep -o "[0-9]*")

while [ true ]
do
    rm  -f index.html -f
    wget -q	 http://meteo.by/minsk/
    echo `grep '<p class="t ">' -A 6 index.html | tail -n 1 | awk {'print $1'}`

    sleep $TIMEOUT
done

