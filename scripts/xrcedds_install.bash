#!/bin/bash

# install dependency
sudo apt install -y gradle
sudo apt install -y libasio-dev libtinyxml2-dev
sudo apt install -y libssl-dev

# create folder 
mkdir -p ~/Software/xrce-dds

# Micro XRCE DDS
cd ~/Software/xrce-dds
git clone https://github.com/eProsima/Micro-XRCE-DDS.git
cd Micro-XRCE-DDS
mkdir build && cd build
cmake ..
make -j8
sudo make install

# Micro XRCE-DDS Gen
cd ~/Software/xrce-dds
git clone --recursive https://github.com/eProsima/micro-XRCE-DDS-gen.git
cd micro-XRCE-DDS-gen
gradle build
