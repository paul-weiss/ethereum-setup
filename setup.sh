#!/bin/bash

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"

# Install Go
cd ~/bin
wget https://go.dev/dl/go1.22.6.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.22.6.linux-amd64.tar.gz

# prerequisites
sudo apt-get install -y git gcc g++ make cmake pkg-config llvm-dev libclang-dev clang protobuf-compiler chrony nodejs npm jq

# Install lighthouse and lcli
cd ~/src
rm -Rf lighthouse
git clone https://github.com/sigp/lighthouse.git
cd lighthouse
git checkout stable
make
make install-lcli

# geth
cd ~/src
rm -Rf go-ethereum
git clone https://github.com/ethereum/go-ethereum.git
cd go-ethereum
make all
