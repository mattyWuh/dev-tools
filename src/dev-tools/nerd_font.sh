#!/bin/bash

git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts && ./install Hasklig
rm -rf nerd-fonts