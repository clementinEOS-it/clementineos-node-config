#!/bin/bash

cd ~

echo 'upgrade eosio to v.2.0.17'
if [[ ! -f ~/eosio-2.0.7-1.el7.x86_64.rpm ]]
then
    wget wget https://github.com/eosio/eos/releases/download/v2.0.7/eosio-2.0.7-1.el7.x86_64.rpm
    sudo yum install ./eosio-2.0.7-1.el7.x86_64.rpm
fi

echo 'upgrade eosio.cdt to v1.7.0'
if [[ ! -f ~/eosio.cdt-1.7.0-1.el7.x86_64.rpm ]]
then
    wget https://github.com/eosio/eosio.cdt/releases/download/v1.7.0/eosio.cdt-1.7.0-1.el7.x86_64.rpm
    sudo yum install ./eosio.cdt-1.7.0-1.el7.x86_64.rpm
fi

echo 'upgrade and build to latest eosio.contracts'
cd /opt/eosio
if [[ ! -d /opt/eosio/eosio.contracts ]]
then
    sudo git clone https://github.com/EOSIO/eosio.contracts.git
    cd eosio.contracts
    cd eosio.contracts-1.8.2
    sudo rm -Rf ./build
    sudo ./build.sh -e /usr/opt/eosio/2.0.7 -c /usr/opt/eosio.cdt/1.7.0
fi