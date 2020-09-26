#!/bin/bash

# Take package manager as input
pkg_mngr=$1

# Install zsh
sudo $pkg_mngr install zsh -y

# Change shell to zsh
chsh $(which zsh)

# Copy `.zshrc` from the repo
cp configs/.zshrc ${HOME}/.zshrc

# Create a `.zsh` directory to store our plugins in one place
mkdir ${HOME}/.zsh

# Clone repo to `~/.zsh/` directory
cd ${HOME}/.zsh && git clone git@github.com:zdharma/fast-syntax-highlighting.git

# Download completion config
cd ${HOME}/.zsh && wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/completion.zsh

# Load completion config
source ${HOME}/.zsh/completion.zsh

# Initialize the completion system
autoload -Uz compinit

# Cache completion if nothing changed - faster startup time
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# Enhanced form of menu completion called `menu selection'
zmodload -i zsh/complist
