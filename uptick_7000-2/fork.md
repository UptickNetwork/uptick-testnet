
## Fork Uptick chain to "uptick_7000-2"

 ```
#Clear old data
cp $HOME/.uptickd/data/priv_validator_state.json $HOME/.uptickd/priv_validator_state.json.backup
uptickd tendermint unsafe-reset-all --home $HOME/.uptickd --keep-addr-book

#Download genesis.json
curl -o $HOME/.uptickd/config/genesis.json https://raw.githubusercontent.com/UptickNetwork/uptick-testnet/main/uptick_7000-2/genesis.json

# Start node
mv $HOME/.uptickd/priv_validator_state.json.backup $HOME/.uptickd/data/priv_validator_state.json
uptickd start --home $HOME/.uptickd

```