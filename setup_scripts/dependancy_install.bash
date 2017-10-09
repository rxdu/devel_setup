#!/bin/bash
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

sudo apt-get -y install aptitude
sudo apt-get -y install build-essential git cmake 
sudo apt-get -y install openjdk-8-jdk
sudo apt-get -y install python-dev python-numpy python-pip
sudo apt-get -y install libboost-all-dev libeigen3-dev 
sudo apt-get -y install libopencv-dev python-opencv
sudo apt-get -y install doxygen

sudo apt-get -y install libqglviewer-dev
sudo apt-get -y install qt4-default
