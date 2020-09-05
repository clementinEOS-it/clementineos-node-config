#!/bin/bash

if [[ -f /opt/eosio/nodeos/eosd.pid ]] 
then
    ./start.sh
fi

cleos push action eosio.token create '[ "eosio", "10000000000.0000 CLE"]' -p eosio.token@active
cleos push action eosio.token issue '[ "eosio", "10000000000.0000 CLE", "initial supply" ]' -p eosio@active
