#!/usr/bin/env bash

# Take package manager as input
pkg_mngr=$1

# Ensure sudo is on the system
if [ ! -d "/usr/bin/sudo" ]; then
    $pkg_mngr install sudo -y
    usermod -aG sudo ${USER}
fi

# curl python3 pip3
sudo $pkg_mngr install git python3 python3-dev curl build-essential libssl-dev libffi-dev -y