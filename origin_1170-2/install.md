#   Origin Installation Guide

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
uptickd init NodeName --chain-id=origin_1170-2
```

## Download Genesis

```shell
curl -Ls wget https://raw.githubusercontent.com/UptickNetwork/uptick-testnet/main/origin_1170-2/config/genesis.json > $HOME/.uptickd/config/genesis.json

sha256sum $HOME/.uptickd/config/genesis.json
#5c28fcc7d0027c0a0ad197b4c3140c0066f6bd18654637281c83c30c96e1e012  genesis.json 
```

## Set peers

You can view or add node peers in the [document](https://docs.google.com/spreadsheets/d/1QmNj4GJzkQP5EBEz5oCNbPreiZZirWmamaXMXeFYMRo/edit?usp=sharing)

```shell
PEERS="cc619896674fcbfa6994f2703bf657cfa062635e@13.213.143.45:26656"
sed -i -e "s/^persistent_peers *=.*/persistent_peers = \"$PEERS\"/" $HOME/.uptickd/config/config.toml
```

## Launch Node
```shell
uptickd start
```

## Testnet Faucet

* Join [Uptick discord](https://discord.gg/8w4GUUUH39)
* Go to the `faucet` channel
* Request tokens at this address in the above channel: `$faucet <your address>`
