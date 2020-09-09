#!/bin/bash

if [[ -f /opt/eosio/nodeos/eosd.pid ]] 
then
    ./start.sh
fi

cleos push action eosio.token create '[ "eosio", "$1 $2"]' -p eosio.token@active
cleos push action eosio.token issue '[ "eosio", "$1 $2", "initial supply" ]' -p eosio@active
