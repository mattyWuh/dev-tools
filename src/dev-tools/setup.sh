#!/bin/bash

# Take pacakge manager as input
pkg_mngr=$1

# Install tools
sudo $pkg_mngr install curl build-essential libssl-dev libffi-dev -y

# Set up font
./nerd_font.sh

# Set up shell
sudo ./zsh.sh $pkg_mngr
./starship.sh 

# Set up terminal
./hyper.sh

# Set up python
./python.sh $pkg_mngr

# Set up npm and associated packages
./node_npm.sh $pkg_mngr