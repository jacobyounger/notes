#!/usr/bin/bash

echo -e "yangao\nyangao" | sudo passwd
echo "$USER ALL=(ALL:ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$USER

sudo apt install -y vim git openssh-server

cat ~/.vimrc << EOF
set nu
set ts=4
set hlsearch
set java_space_errors=1
EOF

git config --global  user.email "youngjacob@dingtalk.com"
git config --global  user.name "Jacob Young"

echo 3 | sudo update-alternatives --config editor 

