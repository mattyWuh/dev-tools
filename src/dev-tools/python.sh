#!/bin/bash

# Get the package manager
pkg_mngr=$1

# Install system reqirements
sudo $pkg_mngr install python-dev python3-venv python3-pip -y

# Install poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3
source $HOME/.poetry/env

# Install python requirements
pip3 install --user cookiecutter

# Ensure packages are on path
echo "\nPATH=${PATH}:/usr/bin" >> ${HOME}/.zshrc