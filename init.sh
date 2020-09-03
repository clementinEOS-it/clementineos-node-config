#!/bin/bash

cd ~

echo 'install pre-requisities'
sudo yum update -y
sudo yum install -y wget unzip git bc cmake3  nano gcc-c++

echo 'install eosio v.1.8.6'
wget https://github.com/EOSIO/eos/releases/download/v1.8.6/eosio-1.8.6-1.el7.x86_64.rpm
sudo yum install -y eosio-1.8.6-1.el7.x86_64.rpm

echo 'install eosio.cdt v1.6.3'
wget https://github.com/EOSIO/eosio.cdt/releases/download/v1.6.3/eosio.cdt-1.6.3-1.el7.x86_64.rpm
sudo yum install -y eosio.cdt-1.6.3-1.el7.x86_64.rpm

echo 'creating folders ...'  
sudo mkdir /opt/eosio /opt/eosio/nodeos /opt/eosio/wallet /opt/eosio/scripts
sudo mkdir /opt/eosio/nodeos/config /opt/eosio/nodeos/data
sudo mkdir /opt/eosio/wallet/config /opt/eosio/wallet/data /opt/eosio/wallet/keys

echo 'copying config files ...'
sudo cp ./nodeos/config.ini /opt/eosio/nodeos/config
sudo cp ./keosd/config.ini /opt/eosio/wallet/config

echo 'copying script files'
sudo cp ./scripts/* /opt/eosio/scripts

echo 'install and build eosio.contracts v.1.8.2'
cd /opt/eosio
sudo wget https://github.com/EOSIO/eosio.contracts/archive/v1.8.2.tar.gz

sudo tar -xf ./v1.8.2.tar.gz
sudo rm ./v1.8.2.tar.gz

sudo rm -Rf /opt/eosio/eosio.contracts-1.8.2/build
exec sudo /opt/eosio/eosio.contracts-1.8.2/build.sh