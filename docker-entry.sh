#!/bin/bash
if test -f "/home/air/bin/$1" ; then
    su air -c "/home/air/bin/$*"
else
    exec "$@"
fi
