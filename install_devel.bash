#!/bin/bash

onlyroot="Do not run this script as root."
  
if [ $(whoami) == 'root' ];then
    echo -e  $COLOR$onlyroot$MONO       #"Only root can do this operation."
    #DBG_MSG  "exit 5"
    exit 0
fi

# update system
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

# run installation scripts
cd ./scripts

# install basic tools
sudo apt-get -y install terminator
sudo apt-get -y install vim exuberant-ctags
sudo apt-get -y install htop
sudo apt-get -y install openssh-server
sudo apt-get -y install screen
sudo apt-get -y install ntp
sudo apt-get -y install can-utils
sudo apt-get -y install valgrind 
sudo apt-get -y install doxygen

# install dependent libraries
sudo chmod +x ./devel_install.bash
./devel_install.bash

# sudo chmod +x ./lcm_install.bash
# ./lcm_install.bash

