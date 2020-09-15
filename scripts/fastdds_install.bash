#!/bin/bash

fastcdr_version=v1.0.14
fastdds_version=v2.0.1
fastgen_version=v1.0.4

# install dependency
sudo apt install -y gradle
sudo apt install -y libasio-dev libtinyxml2-dev
sudo apt install -y libssl-dev

# create folder 
mkdir -p ~/Software/fastdds

# Fast-CDR
cd ~/Software/fastdds
git clone https://github.com/eProsima/Fast-CDR.git
mkdir Fast-CDR/build && cd Fast-CDR/build
git checkout fastcdr_version
cmake ..
make -j8
sudo make install

# Foonathan memory
cd ~/Software/fastdds
git clone https://github.com/eProsima/foonathan_memory_vendor.git
cd foonathan_memory_vendor
mkdir build && cd build
cmake .. -DBUILD_SHARED_LIBS=ON
make -j8
sudo make install

# FastDDS
cd ~/Software/fastdds
git clone https://github.com/eProsima/Fast-DDS.git
mkdir Fast-DDS/build && cd Fast-DDS/build
git checkout fastdds_version
cmake -DCOMPILE_EXAMPLES=ON ..
make -j8
sudo make install

# Fast-RTPS-Gen
cd ~/Software/fastdds
git clone --recursive https://github.com/eProsima/Fast-DDS-Gen.git
cd Fast-DDS-Gen
git checkout fastgen_version
./gradlew assemble
echo 'export PATH=$PATH:~/Software/fastdds/Fast-DDS-Gen/scripts' >> ~/.bashrc 
