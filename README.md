# How to create private blockchain network    
Scripts and configuration files to setup eos blockchain private network

## Prerequisities

Server istance with this requisities: 

- CentOS 8 
- 2 CPU
- 16 GB RAM

Firewall must open port TCP **8888, 9876, 8901, 8080** to access all resource.

## Install eosio packages and contracts
Starting with eosio *v.1.8.6* and eosio.cdt *v1.6.3* with contracts eosio.contracts *v1.8.2*.
To compile the contracts in this release for eosio.bios and eosio.system contracts, in particular also require that the [PREACTIVATE_FEATURE](https://github.com/EOSIO/eos/pull/8328) consensus protocol upgrade has been activated on the EOSIO blockchain before they can be deployed.  

```
cd ~
git clone https://github.com/clementinEOS-it/clementineos-node-config.git

cd clementineos-node-config
./init.sh

```

Finish install packages when compiled eosio.contracts 

```
.....
.....
Warning, action <onblock> does not have a ricardian contract
Warning, action <onblock> does not have a ricardian contract
Warning, action <onerror> does not have a ricardian contract
Warning, action <onblock> does not have a ricardian contract
Warning, action <onerror> does not have a ricardian contract
Warning, action <onblock> does not have a ricardian contract
[100%] Linking CXX executable eosio.system.wasm
[100%] Built target eosio.system
[ 77%] No install step for 'contracts_project'
[ 88%] No test step for 'contracts_project'
[100%] Completed 'contracts_project'
[100%] Built target contracts_project
```

## Start nodeos
```
./start.sh
```

check if nodeos starting 

```
tail -f /opt/eosio/nodeos/nodeos.log
tail -f /opt/eosio/wallet/keosd.log
```

## [Create Development Wallet](https://developers.eos.io/welcome/latest/getting-started/development-environment/create-development-wallet)

```
sudo cleos wallet create --to-console

Creating wallet: default
Save password to use in the future to unlock this wallet.
Without password imported keys will not be retrievable.
"PW5Jkzd92giRQfVwGkT1xHzPEr11xmP4D2cgzNoKqTHeHX2WSsiu8"
```
Use this *PRIVATE KEY ->* **5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3**

```
sudo cleos wallet unlock
sudo cleos wallet import --private-key 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3
sudo cleos wallet create_key
 Created new private key with a public key of: "EOS75aLWLrnfNQ5BsTQLfkfENhTAJsjHQvsXUv38x75j7Zz5Qf7Vm"
```

show keys created 
```
sudo cleos wallet private_keys

password: [[
    "EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV",
    "5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3"
  ],[
    "EOS75aLWLrnfNQ5BsTQLfkfENhTAJsjHQvsXUv38x75j7Zz5Qf7Vm",
    "5Jux8vRGAqVVG2MD4X928396duq1UnAFKSyDcBvSGSdWSd59MVj"
  ]
]
```
