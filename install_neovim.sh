#!/bin/bash

sudo apt update
sudo apt-get -y install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen libsqlite3-dev
mkdir ~/build
cd ~/build

if [ -e `./neovim` ]; then
  rm -rf ./neovim
fi

git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

