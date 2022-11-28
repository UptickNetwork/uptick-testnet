# Uptick Testnet

## Instructions

## Full nodes and general participants

Follow the instructions on the official documentation to [join the testnet](https://docs.uptick.network/testnet/join.html) and how to obtain tokens using the [faucet](https://docs.uptick.network/testnet/faucet.html).

## Genesis File

Download the zipped genesis file [genesis.json](./genesis.json)

Extract it with command

Verify the SHA256 checksum using:

```bash
sha256sum genesis.json
# 9c2a5a9eb74103e3a9ae0599f66b9e665bdd7d67c178ab8308f853602b73be75  genesis.json
```

## Details

- Network Chain ID: `uptick_7000-1`
- EIP155 Chain ID: `7000`
- `uptickd` version: [`v0.2.2`](https://github.com/UptickNetwork/uptick/releases)
- Faucet: [faucet.uptick.network](https://docs.uptick.network/testnet/faucet.html)
- Cosmos explorer: [explorer.testnet.uptick.network](https://explorer.testnet.uptick.network)

## Seeds & Peers

You can find seeds & peers on the seeds.txt and peers.txt files, respectively. If you want to share your seed or peer, please fork this repo and and add it to the bottom of the corresponding .txt file.

## Snapshots

You can find snapshot nodes on the snapshots.txt.