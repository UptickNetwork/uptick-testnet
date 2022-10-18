#!/bin/bash

#download package
cd $HOME
wget https://download.uptick.network/download/uptick/testnet/release/v0.2.3/v0.2.3.tar.gz
tar -zxvf v0.2.3.tar.gz
chmod +x uptick-v0.2.3/linux/uptickd

#add environment variable
mkdir -p $HOME/go/bin
echo "export GOPATH=$HOME/go" >> ~/.bashrc
source ~/.bashrc
echo "export GOBIN=$GOPATH/bin" >> ~/.bashrc
source ~/.bashrc
echo "export PATH=$PATH:$GOBIN" >> ~/.bashrc
source ~/.bashrc
cp uptick-v0.2.3/linux/uptickd $HOME/go/bin/

# init uptickd
uptickd init testnet --chain-id=uptick_7000-1
#download data file
cd  $HOME/.uptickd
rm -rf data
wget https://download.uptick.network/download/uptick/testnet/node/data/data.tar.gz
tar -zxvf data.tar.gz
#update Configuration
curl -o $HOME/.uptickd/config/config.toml https://raw.githubusercontent.com/UptickNetwork/uptick-testnet/main/uptick_7000-1/config.toml
curl -o $HOME/.uptickd/config/genesis.json https://raw.githubusercontent.com/UptickNetwork/uptick-testnet/main/uptick_7000-1/genesis.json
curl -o $HOME/.uptickd/config/app.toml https://raw.githubusercontent.com/UptickNetwork/uptick-testnet/main/uptick_7000-1/app.toml
#add startup Script
cd  $HOME
echo 'nohup uptickd start  > $HOME/node.log 2>&1 & ' > start.sh && chmod +x start.sh
# start
./start.sh

