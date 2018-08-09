#!/bin/bash

# update system
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

# install basic tools
sudo apt-get -y install aptitude curl
sudo apt-get -y install terminator
sudo apt-get -y install vim exuberant-ctags
sudo apt-get -y install htop
sudo apt-get -y install openssh-server
sudo apt-get -y install screen
sudo apt-get -y install ntp
sudo apt-get -y install valgrind 
sudo apt-get -y install gnome-nettool

# development tools for C++, java, python
sudo apt-get -y install build-essential git cmake 
sudo apt-get -y install openjdk-8-jdk
sudo apt-get -y install python-dev python-pip 
sudo apt-get -y install python-numpy  python-scipy python-matplotlib

# commonly used libraries
sudo apt-get -y install libopencv-dev python-opencv
sudo apt-get -y install libboost-all-dev libeigen3-dev 
sudo apt-get -y install libcgal-dev
sudo apt-get -y install libgsl2 libgsl-dev

sudo apt-get -y install libqglviewer-dev
sudo apt-get -y install qt5-default

sudo apt-get -y install doxygen

# install VS Code
sudo apt-get -y install apt-transport-https
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get -y install code

# install Chrome
sudo apt-get -y install libappindicator1 libindicator7
cd ~/Downloads/
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
