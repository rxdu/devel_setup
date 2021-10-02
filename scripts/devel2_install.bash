#!/bin/bash

# install Cairo and FLTK
sudo apt-get -y install libcairo2 libcairo2-dev
# sudo apt-get -y install libfltk1.3 libfltk1.3-dev
# sudo apt-get -y install libfltk-cairo1.3

## additional experimental packages 
# install MathGL for visualization
# sudo apt-get -y install mathgl libmgl-dev libmgl-glut7.5.0 libmgl-fltk7.5.0 libmgl-qt5-7.5.0
# replace the default config file - deprecated, refer to librav for better handling of this config file
# sudo cp source/config.h /usr/include/mgl2/