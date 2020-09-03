#!/bin/sh
exec sudo keosd --config-dir=/opt/eosio/wallet/config --wallet-dir=/opt/eosio/wallet/data --unix-socket-path=/opt/eosio/wallet >> /opt/eosio/wallet/keosd.log 2>&1 & echo $! > /opt/eosio/wallet/keosd.pid
