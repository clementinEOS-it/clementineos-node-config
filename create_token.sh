#!/bin/bash

if [[ -f /opt/eosio/nodeos/eosd.pid ]] 
then
    ./start.sh
fi

cleos push action eosio.token create '[ "eosio", "$1 $2"]' -p eosio.token@active
cleos push action eosio.token issue '[ "eosio", "$1 $2", "initial supply" ]' -p eosio@active

cleos push action eosio setpriv '["eosio.msig", 1]' -p eosio@active
cleos push action eosio init '["0", "4,$2"]' -p eosio@active

