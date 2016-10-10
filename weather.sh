#!/bin/sh

while [ true ]
do
    rm index.html
    wget -q	 http://meteo.by/minsk/
    echo `head -n 840 index.html | tail -n 1 -f `
done

