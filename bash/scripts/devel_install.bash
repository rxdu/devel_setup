#!/bin/bash

# development tools for C++, java, python
sudo apt-get -y install build-essential git cmake 
sudo apt-get -y install openjdk-8-jdk
sudo apt-get -y install python-dev 
sudo apt-get -y install python-numpy python-scipy python-matplotlib
sudo apt-get -y install python3-pip 
sudo python3 -m pip install conan

# commonly used libraries
sudo apt-get -y install libopencv-dev python-opencv
sudo apt-get -y install libboost-all-dev libeigen3-dev 
sudo apt-get -y install libcgal-dev
sudo apt-get -y install libgsl2 libgsl-dev
sudo apt-get -y install libncurses5-dev

sudo apt-get -y install qt5-default
sudo apt-get -y install libqglviewer-dev-qt5
sudo apt-get -y install libglfw3-dev libcairo2 libcairo2-dev
