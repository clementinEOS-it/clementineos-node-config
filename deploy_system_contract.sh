#!/bin/bash

if [[ -f /opt/eosio/nodeos/eosd.pid ]] 
then
    ./start.sh
fi

cd /opt/eosio/eosio.contracts-1.8.2/build/contracts

cleos set contract eosio.token ./eosio.token
cleos set contract eosio.msig ./eosio.msig
cleos set contract eosio.wrap ./eosio.wrap
cleos set contract eosio ./eosio.bios
cleos set contract eosio ./eosio.system