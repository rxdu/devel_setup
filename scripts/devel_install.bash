#!/bin/bash

## additional experimental packages 
# install MathGL for visualization
sudo apt-get -y install mathgl libmgl-dev libmgl-glut7.4.1
# replace the default config file
sudo cp source/config.h /usr/include/mgl2/