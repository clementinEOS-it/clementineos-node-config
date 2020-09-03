# clementineos-node-config
Scripts and configuration files to setup eos blockchain private network

## Prerequisities

Server istance with this requisities: 

- CentOS 8 
- 2 CPU
- 16 GB RAM

Firewall must open port TCP **8888, 9876, 8901, 8080** to access all resource.

## Usage

```
cd ~
git clone https://github.com/clementinEOS-it/clementineos-node-config.git

cd clementineos-node-config
./init.sh

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
