#!/bin/bash

# install dependency
sudo apt install -y gradle

# create folder 
mkdir -p ~/Software/fastrtps
cd ~/Software/fastrtps

# clone LCM source, compile and install
git clone https://github.com/eProsima/Fast-RTPS
cd Fast-RTPS

mkdir build
cd build

cmake -DTHIRDPARTY=ON -DBUILD_JAVA=ON ..
make -j8
sudo make install