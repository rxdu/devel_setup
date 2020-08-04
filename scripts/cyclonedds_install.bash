#!/bin/bash

sudo apt-get -y install maven default-jdk

mkdir -p ~/Software/cyclonedds

cd ~/Software/cyclonedds
git clone https://github.com/eclipse-cyclonedds/cyclonedds.git
mkdir build && cd build
cmake ..
make -j8
sudo make install