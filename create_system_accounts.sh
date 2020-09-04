#!/bin/bash

echo 'create system account eosio.bpay'
cleos create account eosio eosio.bpay $1

echo 'create system account eosio.msig'
cleos create account eosio eosio.msig $1

echo 'create system account eosio.names'
cleos create account eosio eosio.names $1

echo 'create system account eosio.ram'
cleos create account eosio eosio.ram $1

echo 'create system account eosio.ramfee'
cleos create account eosio eosio.ramfee $1

echo 'create system account eosio.saving'
cleos create account eosio eosio.saving $1

echo 'create system account eosio.stake'
cleos create account eosio eosio.stake $1

echo 'create system account eosio.token'
cleos create account eosio eosio.token $1

echo 'create system account eosio.vpay'
cleos create account eosio eosio.vpay $1

echo 'create system account eosio.rex'
cleos create account eosio eosio.rex $1
