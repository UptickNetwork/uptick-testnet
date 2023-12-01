##  Block rollback

Block rollback to specified height 3008021



Reset Date
```
rm -rf $HOME/.uptickd/data
```


Check version number

```
uptickd version --long

#commit: 729f183f4bd74a3a0200614194070e21a2540a9c
#cosmos_sdk_version: v0.46.13
#name: uptick
#server_name: uptickd
#version: v0.2.14

```

Download snapshot
```
cd  $HOME/.uptickd

wget https://raw.githubusercontent.com/UptickNetwork/uptick-testnet/main/origin_1170-1/lib/origin_3008021.tar.gz

tar -zxvf origin_3008021.tar.gz
```

Set Peers
```
sed -i.bak -e "s/^persistent_peers *=.*/persistent_peers = \"4e9c4865b96e4675da9322d50e1ec439161d56ea@54.179.233.10:26656\"/" $HOME/.uptickd/config/config.toml

sed -i.bak -e "s/^max_num_outbound_peers *=.*/max_num_outbound_peers = 0 /" $HOME/.uptickd/config/config.toml
```

Restart service
```
uptickd start --home $HOME/.uptickd
```
