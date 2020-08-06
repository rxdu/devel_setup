#!/bin/bash

grpc_version=v1.30.2

sudo apt-get update && sudo apt-get install -y libssl-dev

# create folder 
mkdir -p ~/Software
cd ~/Software

# build and install grpc
git clone --recursive https://github.com/grpc/grpc.git
cd ~/Software/grpc
mkdir build && cd build
cmake \
  -DCMAKE_BUILD_TYPE=Release \
  -DgRPC_INSTALL=ON \
  -DgRPC_BUILD_TESTS=OFF \
  -DgRPC_SSL_PROVIDER=package \
  ..
make -j8
sudo make install
