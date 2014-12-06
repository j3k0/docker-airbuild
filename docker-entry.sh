#!/bin/bash
if [ test -e "/home/air/bin/$1" == /* ]]; then
    /usr/bin/su - air -c "$@"
else
    exec "$@"
fi
