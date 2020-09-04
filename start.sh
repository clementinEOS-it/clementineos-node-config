#!/bin/bash

echo 'starting nodeos ...'
sudo /opt/eosio/scripts/nodeosd_start.sh

echo 'starting wallet ...'
sudo /opt/eosio/scripts/keosd_start.sh
