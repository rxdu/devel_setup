#!/bin/bash

## additional experimental packages 
# install MathGL for visualization
sudo apt-get -y install mathgl libmgl-dev libmgl-glut7.4.1
# replace the default config file
sudo cp source/config.h /usr/include/mgl2/

# install Cairo and FLTK
sudo apt-get -y install libcairo2 libcairo2-dev
sudo apt-get -y install libfltk1.3 libfltk1.3-dev
sudo apt-get -y install libfltk-cairo1.3
