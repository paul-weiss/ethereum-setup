#!/bin/bash

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update stable
# note this is may need to be changed based on your chipset
rustup default stable-aarch64-apple-darwin

# install llvm
brew install llvm pkg-config

# download reth
cd ~
git clone https://github.com/paradigmxyz/reth
cd reth

# build
cargo build --release
