#!/bin/bash

echo 'create default wallet'
cleos wallet create --file ~/wallet_password.txt

echo 'unlock default wallet'
password=$(cat ~/wallet_password.txt)
cleos wallet unlock --password $password

echo 'create development account'
cleos wallet import --private-key 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3

echo 'create public/private keys to system accounts'
cleos wallet create_key

echo 'show keys ...'
cleos wallet private_keys --password $password