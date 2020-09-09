#!/bin/bash

cd ~

echo 'install pre-requisities'
sudo yum update -y
sudo yum install -y wget unzip git bc cmake3  nano gcc-c++

echo 'install eosio v.1.8.6'
if [[ ! -f ~/eosio-1.8.6-1.el7.x86_64.rpm ]]
then
    echo "<file> does not exist."
    wget https://github.com/EOSIO/eos/releases/download/v1.8.6/eosio-1.8.6-1.el7.x86_64.rpm
    sudo yum install -y eosio-1.8.6-1.el7.x86_64.rpm
fi

echo 'install eosio.cdt v1.6.3'
if [[ ! -f ~/eosio.cdt-1.6.3-1.el7.x86_64.rpm ]]
then
    wget https://github.com/EOSIO/eosio.cdt/releases/download/v1.6.3/eosio.cdt-1.6.3-1.el7.x86_64.rpm
    sudo yum install -y eosio.cdt-1.6.3-1.el7.x86_64.rpm
fi

echo 'creating folders ...'  
if [[ ! -d  /opt/eosio ]] && [[ ! -d  /opt/eosio/nodeos ]] && [[ ! -d  /opt/eosio/wallet ]] && [[ ! -d  /opt/eosio/scripts ]]
then
    sudo mkdir /opt/eosio /opt/eosio/nodeos /opt/eosio/wallet /opt/eosio/scripts
    sudo mkdir /opt/eosio/nodeos/config /opt/eosio/nodeos/data
    sudo mkdir /opt/eosio/wallet/config /opt/eosio/wallet/data /opt/eosio/wallet/keys
fi

echo 'copying config files ...'
if [[ ! -f /opt/eosio/nodeos/config/config.ini ]] && [[ ! -f /opt/eosio/wallet/config/config.ini ]] 
then
    sudo cp ./nodeos/config.ini /opt/eosio/nodeos/config
    sudo cp ./keosd/config.ini /opt/eosio/wallet/config
fi

echo 'copying script files'
sudo cp ./scripts/* /opt/eosio/scripts

echo 'install and build eosio.contracts v.1.8.2'
cd /opt/eosio
if [[ ! -d /opt/eosio/eosio.contracts-1.8.2 ]]
then
    sudo wget https://github.com/EOSIO/eosio.contracts/archive/v1.8.2.tar.gz
    sudo tar -xf ./v1.8.2.tar.gz
    sudo rm ./v1.8.2.tar.gz

    cd eosio.contracts-1.8.2
    sudo rm -Rf ./build
fi
exec sudo ./build.sh -e /usr/opt/eosio/1.8.6 -c /usr/opt/eosio.cdt/1.6.3