#!/bin/bash

# Get the repo
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git

# Install Hasklig
cd nerd-fonts && ./install Hasklig

# Remove repo
rm -rf nerd-fonts

echo "Hasklig installed!"