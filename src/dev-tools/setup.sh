#!/bin/bash

# Take pacakge manager as input
pkg_mngr=$1

# Install tools
sudo $pkg_mngr install curl

# Set up font
./nerd_font.sh

# Set up shell
sudo ./zsh $pkg_mngr
./starship.sh 

# Set up terminal
./hyper