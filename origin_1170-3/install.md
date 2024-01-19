#   Origin3 Installation Guide

## Install Node

```shell
cd $HOME

rm -rf uptick

git clone https://github.com/UptickNetwork/uptick.git

cd uptick

git checkout v0.2.11

make install

uptickd version
```
## Initialize Node

```shell
uptickd init NodeName --chain-id=origin_1170-3
```

## Download Genesis

```shell
curl -Ls wget https://raw.githubusercontent.com/UptickNetwork/uptick-testnet/main/origin_1170-3/config/genesis.json > $HOME/.uptickd/config/genesis.json

sha256sum $HOME/.uptickd/config/genesis.json
#85caaff5e4955eca925406403f40eee595695e2fdc2ffaa3a86c6e1f67fb4435  genesis.json 
```


## Set peers

```shell
PEERS="cda6bd82e62e8c91b54498d7fbd930b962f1125b@47.128.211.171:26656"
sed -i -e "s/^persistent_peers *=.*/persistent_peers = \"$PEERS\"/" $HOME/.uptickd/config/config.toml
```

## Launch Node
```shell
uptickd start
```

## Testnet Faucet
Use the following link to obtain the test token

eg: https://faucet.origin.uptick.network/v1/origin/faucet/uptick1c02wfr8gt9y6geudgj8hvncrqawd5v0wratzf0

```shell
https://faucet.origin.uptick.network/v1/origin/faucet/${wallet address}
```
