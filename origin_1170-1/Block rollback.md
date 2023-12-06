##  Block rollback

### Stop node
sudo systemctl stop uptickd

### CheckSum genesis.json
sha256sum $HOME/.uptickd/config/genesis.json
d78958818abc969ba70dc801e0044c6cc02121cf5baae088258392f1ea72aacc

### Check Binary version
uptickd version --long
commit: 729f183f4bd74a3a0200614194070e21a2540a9c
version: v0.2.14

### Backup your priv_validator_state.json important
cp $HOME/.uptickd/data/priv_validator_state.json $HOME/.uptickd/priv_validator_state.json.backup

### Reset data
sudo rm -rf $HOME/.uptickd/data
uptickd tendermint unsafe-reset-all --home $HOME/.uptickd/

### Download the snapshot
curl -o - -L https://ss-t.uptick.nodestake.top/2023-12-06_uptick_3012080.tar.lz4 | lz4 -c -d - | tar -x -C $HOME/.uptickd

### Recover priv_validator_state.json important
mv $HOME/.uptickd/priv_validator_state.json.backup $HOME/.uptickd/data/priv_validator_state.json

### Restart node
sudo systemctl restart uptickd
journalctl -f -u uptickd