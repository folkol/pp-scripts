#!/bin/zsh

if [ -z "$HOST" ];
then
    HOST=localhost
fi

export TOKEN=`curl -s -H "Content-Type: application/json" -X POST -d @$HOME/tmp/login.json "http://$HOST:8080/onecms/security/token?format=json"|sed -e 's/{"token":"\(.*\)",".*/\1/'`
