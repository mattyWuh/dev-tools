#!usr/bin/env bash

# Take package manager as input
pkg_mngr=$1
scripts=src/dev-tools

# Update package manager
$pkg_mngr update

# Install essentials
bash $scripts/essentials.sh $pkg_mngr

# Set up font
bash $scripts/nerd_font.sh

# Set up shell
sudo bash $scripts/zsh.sh $pkg_mngr
bash $scripts/starship.sh 

# Set up terminal
bash $scripts/hyper.sh

# Set up python
bash $scripts/python.sh $pkg_mngr

# Set up npm and associated packages
bash $scripts/node_npm.sh $pkg_mngr