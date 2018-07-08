#!/bin/bash

# install dependencies
sudo apt-get -y install build-essential 
sudo apt-get -y install libglib2.0-dev
sudo apt-get -y install autotools-dev automake autopoint libtool
sudo apt-get -y install python-dev
sudo apt-get -y install openjdk-8-jdk

# create folder 
mkdir -p ~/Software/lcm-lib
cd ~/Software/lcm-lib

# clone LCM source, compile and install
git clone https://github.com/lcm-proj/lcm.git lcm
cd lcm
mkdir build
cd build
cmake ..
make 
sudo make install

# setup environment variable
echo export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/ >> ~/.bashrc
source ~/.bashrc

