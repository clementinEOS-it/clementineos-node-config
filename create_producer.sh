#!/bin/bash

cleos wallet import --private-key $2
cleos system newaccount eosio --transfer $3 $1 --stake-net "$5 $6" --stake-cpu "$5 $6" --buy-ram-kbytes 8192

cleos system regproducer $3 $1 $4 $1 