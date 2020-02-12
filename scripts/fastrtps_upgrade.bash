#!/bin/bash

fastcdr_version=v1.0.12
fastrtps_version=v1.9.4
fastgen_version=v1.0.3

# Fast-CDR
cd ~/Software/fastrtps/Fast-CDR
git pull origin
git checkout $fastcdr_version
git checkout -b weston-$fastcdr_version
cd build
cmake ..
make -j8
sudo make install

# FastRTPS
cd ~/Software/fastrtps/Fast-RTPS
git pull origin
git checkout $fastrtps_version
git checkout -b weston-$fastrtps_version
cd build
cmake -DCOMPILE_EXAMPLES=ON ..
make -j8
sudo make install

# Fast-RTPS-Gen
cd ~/Software/fastrtps/Fast-RTPS-Gen
git pull origin
git checkout $fastgen_version
git checkout -b weston-$fastgen_version
gradle assemble
