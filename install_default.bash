#!/bin/bash

onlyroot="Do not run this script as root."
  
if [ $(whoami) == 'root' ];then
    echo -e  $COLOR$onlyroot$MONO       #"Only root can do this operation."
    #DBG_MSG  "exit 5"
    exit 0
fi

cd ./scripts

sudo chmod +x ./base_install.bash
./dependancy_install.bash

sudo chmod +x ./lcm_install.bash
./lcm_install.bash

sudo chmod +x ./devel_install.bash
./devel_install.bash



