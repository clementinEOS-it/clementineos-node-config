#!/bin/bash
DATADIR="/opt/eosio/nodeos"

if [ -f $DATADIR"/eosd.pid" ]; then

    pid='sudo cat $DATADIR"/eosd.pid"'
    echo $pid
    kill $pid
    rm -r $DATADIR"/eosd.pid"
    echo -ne "Stopping Node ..."
    
    while true; do
        [ ! -d "/proc/$pid/fd" ] && break
        echo -ne "."
        sleep 1
    done

    echo -ne "\rNode Stopped. \n"

fi

