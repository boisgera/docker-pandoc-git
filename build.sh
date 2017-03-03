#!/bin/bash

apt-get update && apt-get upgrade
apt-get install -y curl
apt-get install -y git

apt-get install -y texlive-full

export PATH=/root/.local/bin:"$PATH"
curl -sSL https://get.haskellstack.org/ | sh

git clone https://github.com/jgm/pandoc
cd pandoc
git submodule update --init
stack setup
stack install --test
cd

git clone https://github.com/jgm/pandoc-citeproc.git
cd pandoc-citeproc
git submodule update --init
stack setup
stack install --test
cd


