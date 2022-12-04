#!/bin/bash

grpc_version=v1.36.2

sudo apt-get update && sudo apt-get install -y libssl-dev

# create folder 
mkdir -p ~/Software
cd ~/Software

# build and install grpc
git clone https://github.com/grpc/grpc.git
cd grpc
git checkout $grpc_version
git submodule update --init --recursive
cd ~/Software/grpc
mkdir build && cd build
cmake \
  -DCMAKE_BUILD_TYPE=Release \
  -DgRPC_INSTALL=ON \
  -DgRPC_BUILD_TESTS=OFF \
  -DgRPC_SSL_PROVIDER=package \
  -DCMAKE_INSTALL_PREFIX=/opt/weston_robot \
  ..
make -j8
sudo make install
