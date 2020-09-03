#!/bin/sh
exec sudo nodeos -e -p eosio --data-dir=/opt/eosio/nodeos/data --config-dir=/opt/eosio/nodeos/config --disable-replay-opts --contracts-console >> /opt/eosio/nodeos/nodeos.log 2>&1 & echo $! > /opt/eosio/nodeos/eosd.pid
