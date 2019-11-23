#!/bin/bash

# install dependency
sudo apt install -y gradle
sudo apt install -y libasio-dev libtinyxml2-dev
sudo apt install -y libssl-dev

# create folder 
mkdir -p ~/Software/fastrtps

# Fast-CDR
cd ~/Software/fastrtps
git clone https://github.com/eProsima/Fast-CDR.git
mkdir Fast-CDR/build && cd Fast-CDR/build
cmake ..
make -j8
sudo make install

# Foonathan memory
cd ~/Software/fastrtps
git clone https://github.com/eProsima/foonathan_memory_vendor.git
cd foonathan_memory_vendor
mkdir build && cd build
cmake ..
make -j8
sudo make install

# FastRTPS
cd ~/Software/fastrtps
git clone https://github.com/eProsima/Fast-RTPS.git
mkdir Fast-RTPS/build && cd Fast-RTPS/build
cmake -DCOMPILE_EXAMPLES=ON ..
make -j8
sudo make install

# Fast-RTPS-Gen
cd ~/Software/fastrtps
git clone --recursive https://github.com/eProsima/Fast-RTPS-Gen.git
cd Fast-RTPS-Gen
gradle assemble
echo 'export PATH=$PATH:~/Software/fastrtps/Fast-RTPS-Gen/scripts' >> ~/.bashrc 
