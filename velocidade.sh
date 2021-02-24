#!/bin/bash

IFS='
'

{
/usr/lib/zabbix/externalscripts/speedtest.py --simple  > /tmp/velocidade.txt
} &> /dev/null

Ping(){

cat /tmp/velocidade.txt | grep Ping | awk '{print $2}'

}

Download(){

cat /tmp/velocidade.txt | grep Download | awk '{print $2}'

}

Upload(){

cat /tmp/velocidade.txt | grep Upload | awk '{print $2}'

}

if [[ "$1" == "Ping" || "$1" == "Download" || "$1" == "Upload" ]]; then
        $1
fi
