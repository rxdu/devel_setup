#!/bin/bash

CERES_VERSION="1.13.0"
PROTO_VERSION="v3.4.1"

# Install Dependencies
sudo apt-get install -y \
    clang \
    g++ \
    git \
    google-mock \
    libboost-all-dev \
    libcairo2-dev \
    libcurl4-openssl-dev \
    libeigen3-dev \
    libgflags-dev \
    libgoogle-glog-dev \
    liblua5.2-dev \
    libsuitesparse-dev \
    ninja-build \
    python-sphinx

# create folder 
mkdir -p ~/Software/cartographer

# Build and install Ceres.
cd ~/Software/cartographer
git clone https://ceres-solver.googlesource.com/ceres-solver
cd ceres-solver
git checkout tags/${CERES_VERSION}
mkdir build
cd build
cmake .. -G Ninja -DCXX11=ON
ninja
CTEST_OUTPUT_ON_FAILURE=1 ninja test
sudo ninja install

# Build and install proto3.
cd ~/Software/cartographer
git clone https://github.com/google/protobuf.git
cd protobuf
git checkout tags/${PROTO_VERSION}
mkdir build
cd build
cmake -G Ninja \
  -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
  -DCMAKE_BUILD_TYPE=Release \
  -Dprotobuf_BUILD_TESTS=OFF \
  ../cmake
ninja
sudo ninja install

# Build and install Cartographer.
cd ~/Software/cartographer
git clone https://github.com/cartographer-project/cartographer.git
cd cartographer
mkdir build
cd build
cmake .. -G Ninja
ninja
CTEST_OUTPUT_ON_FAILURE=1 ninja test
sudo ninja install