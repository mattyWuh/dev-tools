#!/bin/bash

# Take pacakge manager as input
pkg_mngr=$1
scripts=src/dev-tools
# Install tools
sudo $pkg_mngr install curl build-essential libssl-dev libffi-dev -y

# Set up font
./$scripts/nerd_font.sh

# Set up shell
sudo ./$scripts/zsh.sh $pkg_mngr
./$scripts/starship.sh 

# Set up terminal
./$scripts/hyper.sh

# Set up python
./$scripts/python.sh $pkg_mngr

# Set up npm and associated packages
./$scripts/node_npm.sh $pkg_mngr