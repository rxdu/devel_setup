#!/bin/bash

# development tools for C++, java, python
sudo apt-get -y install build-essential git cmake 
sudo apt-get -y install openjdk-8-jdk
sudo apt-get -y install python-dev python-pip 
sudo apt-get -y install python-numpy python-scipy python-matplotlib

# commonly used libraries
sudo apt-get -y install libopencv-dev python-opencv
sudo apt-get -y install libboost-all-dev libeigen3-dev 
sudo apt-get -y install libcgal-dev
sudo apt-get -y install libgsl2 libgsl-dev

sudo apt-get -y install qt5-default
sudo apt-get -y install libqglviewer-dev-qt5

# install Cairo and FLTK
sudo apt-get -y install libcairo2 libcairo2-dev
sudo apt-get -y install libfltk1.3 libfltk1.3-dev
sudo apt-get -y install libfltk-cairo1.3

## additional experimental packages 
# install MathGL for visualization
sudo apt-get -y install mathgl libmgl-dev libmgl-glut7.5.0 libmgl-fltk7.5.0 libmgl-qt5-7.5.0
# replace the default config file - deprecated, refer to librav for better handling of this config file
# sudo cp source/config.h /usr/include/mgl2/