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

# research
sudo apt-get -y install texlive-full
sudo apt-get -y install texstudio

sudo apt-get install -y libwebkitgtk-1.0-0
sudo apt-get install -y libproxy1-plugin-webkit