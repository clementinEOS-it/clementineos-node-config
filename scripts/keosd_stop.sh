#!/bin/bash

if [[ -f /opt/eosio/wallet/keosd.pid ]] 
then
 pid='cat /opt/eosio/wallet/keosd.pid'
 echo $pid
 kill $pid
 rm -r /opt/eosio/wallet/keosd.pid
 echo -ne "Stopping Wallet ..."
 
 while true; do
  [ ! -d "/proc/$pid/fd" ] && break
  echo -ne "."
  sleep 1
  done
  echo -ne "\rWallet Stopped. \n"
fi

