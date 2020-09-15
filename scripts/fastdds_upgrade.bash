#!/bin/bash

# specify version
fastcdr_version=v1.0.14
fastdds_version=v2.0.1
fastgen_version=v1.0.4

# Foonathan memory
cd ~/Software/fastdds/foonathan_memory_vendor
git pull origin master
cd build
cmake .. -DBUILD_SHARED_LIBS=ON
sudo cmake --build . --target install

# Fast-CDR
cd ~/Software/fastdds/Fast-CDR
git pull origin
git checkout $fastcdr_version
cd build
cmake ..
make -j8
sudo make install

# FastDDS
cd ~/Software/fastdds/Fast-DDS
git pull origin
git checkout $fastdds_version
cd build
cmake -DCOMPILE_EXAMPLES=ON ..
make -j8
sudo make install

# Fast-DDS-Gen
cd ~/Software/fastdds/Fast-DDS-Gen
git pull origin
git checkout $fastgen_version
./gradlew assemble
