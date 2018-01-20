#!/bin/bash

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

sudo apt-get -y install aptitude curl
sudo apt-get -y install build-essential git cmake 
sudo apt-get -y install python-dev python-pip 
sudo apt-get -y install libboost-all-dev libeigen3-dev 
sudo apt-get -y install libopencv-dev python-opencv

sudo apt-get -y install terminator
sudo apt-get -y install vim exuberant-ctags
sudo apt-get -y install htop
sudo apt-get -y install openssh-server
sudo apt-get -y install screen
sudo apt-get -y install ntp
sudo apt-get -y install valgrind 
sudo apt-get -y install can-utils