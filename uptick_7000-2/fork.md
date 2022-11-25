
## Fork Uptick chain to "uptick_7000-2"

 ```
export DAEMON_HOME= <Your node path. eg: $HOME/.uptickd >

#Clear old data
uptickd tendermint unsafe-reset-all --home /Users/mumu/fsdownload/node0/uptickd

#Download genesis.json
curl -o $DAEMON_HOME/config/genesis.json https://raw.githubusercontent.com/UptickNetwork/uptick-testnet/main/uptick_7000-2/genesis.json

# Start node
uptickd start --home $DAEMON_HOME


```