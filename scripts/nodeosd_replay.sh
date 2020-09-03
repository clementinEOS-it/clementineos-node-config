#!/bin/sh
exec sudo nodeos -e -p eosio --data-dir=/opt/eosio/nodeos/data --config-dir=/opt/eosio/nodeos/config --hard-replay-blockchain --contracts-console >> /opt/eosio/nodeos/nodeos.log 2>&1 & echo $! > /opt/eosio/nodeos/eosd.pid
