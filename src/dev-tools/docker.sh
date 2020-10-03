#!usr/bin/env bash

# Download docker install script
curl https://get.docker.com/ >> install_docker.sh

# Run install
chmod +x install_docker.sh && ./install_docker.sh

# Add user to docker group
sudo usermod -aG docker ${USER}

# Ensure `docker.sock` is accessible
sudo chmod 666 /var/run/docker.sock

# Clean up
rm install_docker.sh