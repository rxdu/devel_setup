#!/bin/bash

# install ROS melodic
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update
sudo apt install -y ros-melodic-desktop-full

sudo rosdep init
rosdep update

echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo apt install -y python-rosinstall python-rosinstall-generator python-wstool build-essential

# install additional packages
sudo apt install -y ros-melodic-navigation 
sudo apt install -y ros-melodic-teleop-twist-keyboard 
sudo apt install -y ros-melodic-pointcloud-to-laserscan
sudo apt install -y ros-melodic-video-stream-opencv