#!/bin/sh

if [ $(ps aux | grep node | grep -v grep | wc -l | tr -s "\n") -eq 0 ]
then
    export PATH=/usr/local/bin:$PATH
    export NODE_ENV=production
    forever start --spinSleepTime 10000 /var/www/html/ghost/index.js >> /var/www/html/ghost/log/nodelog.txt 2>&1
fi
