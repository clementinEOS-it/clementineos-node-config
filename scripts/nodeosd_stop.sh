#!/bin/bash

if [[ -f /opt/eosio/nodeos/eosd.pid ]] 
then
    pid='sudo cat /opt/eosio/nodeos/eosd.pid'
    echo $pid
    sudo kill $pid
    sudo rm -r /opt/eosio/nodeos/eosd.pid
    echo -ne "Stopping Node ..."
    
    while true; do
        [ ! -d "/proc/$pid/fd" ] && break
        echo -ne "."
        sleep 1
    done

    echo -ne "\rNode Stopped. \n"

fi

