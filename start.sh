#!/bin/bash

echo 'starting nodeos ...'
exec sudo /opt/eosio/scripts/nodeosd_start.sh
exec sudo /opt/eosio/scripts/keosd_start.sh
