#!usr/bin/env bash

# Get the package manager
pkg_mngr=$1

# Get node source
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

# Install node + npm
sudo $pkg_mngr install -y nodejs

# Install gitmoji
npm i -g gitmoji-cli

echo "node and npm installed!"