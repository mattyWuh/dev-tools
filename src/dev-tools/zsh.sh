#!/bin/bash

# Take package manager as input
pkg_mngr=$1

# Install zsh
sudo $pkg_mngr install zsh -y

# Change shell to zsh
chsh $(which zsh)

# Copy `.zshrc` from the repo
cp cfg/.zshrc ${HOME}/.zshrc

# Create a `.zsh` directory to store our plugins in one place
mkdir ${HOME}/.zsh

# Clone repo to `~/.zsh/` directory
cd ${HOME}/.zsh && git clone git@github.com:zdharma/fast-syntax-highlighting.git

# Download completion config
cd ${HOME}/.zsh && wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/completion.zsh

echo "zsh installed!"