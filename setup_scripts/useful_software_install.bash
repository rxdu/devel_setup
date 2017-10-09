#!/bin/bash

# install basic tools
sudo apt-get -y install terminator
sudo apt-get -y install vim exuberant-ctags
sudo apt-get -y install htop 
sudo apt-get -y install openssh-server
sudo apt-get -y install screen
sudo apt-get -y install ntp

# research
sudo apt-get -y install texlive-full
sudo apt-get -y install texstudio

# install Chrome
sudo apt-get -y install libappindicator1 libindicator7
cd ~/Downloads/
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# install VS Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code