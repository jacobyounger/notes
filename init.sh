#!/usr/bin/bash

echo -e "yangao\nyangao" | sudo passwd
echo "$USER ALL=(ALL:ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$USER

sudo apt install -y curl vim git openssh-server

cat ~/.vimrc << EOF
set nu
set ts=4
set hlsearch
set java_space_errors=1
EOF

git config --global  user.email "youngjacob@dingtalk.com"
git config --global  user.name "Jacob Young"

echo 3 | sudo update-alternatives --config editor 

curl --output code.deb https://vscode.cdn.azure.cn/stable/26076a4de974ead31f97692a0d32f90d735645c0/code_1.41.1-1576681836_amd64.deb
sudo dpkg -i code.deb
