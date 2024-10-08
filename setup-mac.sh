#!/bin/bash

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update stable
# note this is may need to be changed based on your chipset
rustup default stable-aarch64-apple-darwin

# install llvm
brew install llvm pkg-config
brew install cmake


# download reth
cd ..
git clone https://github.com/paradigmxyz/reth
cd reth

# build
cargo build --release

# lighthouse ethereum consensus client
cd ..
git clone https://github.com/sigp/lighthouse.git
cd lighthouse
git checkout stable
make
