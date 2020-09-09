
#!/bin/bash

cleos push action eosio setpriv '["eosio.msig", 1]' -p eosio@active
cleos push action eosio init '["0", "4,$1"]' -p eosio@active
