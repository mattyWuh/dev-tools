#!/bin/bash

curl -fsSL https://starship.rs/install.sh | bash
echo 'eval "$(starship init zsh)"' >> ${HOME}/.zshrc
cp configs/.hyper.js ${HOME}/.hyper.js