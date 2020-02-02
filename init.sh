#!/usr/bin/bash

echo -e "yangao\nyangao" | sudo passwd
echo "$USER ALL=(ALL:ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$USER

sudo apt install -y vim git openssh-server


