#!/bin/bash
DATADIR="/opt/eosio/wallet"

if [ -f $DATADIR"/keosd.pid" ]; then
 pid='cat $DATADIR"/keosd.pid"'
 echo $pid
 kill $pid
 rm -r $DATADIR"/keosd.pid"
 echo -ne "Stopping Wallet ..."
 
 while true; do
  [ ! -d "/proc/$pid/fd" ] && break
  echo -ne "."
  sleep 1
  done
  echo -ne "\rWallet Stopped. \n"
fi

