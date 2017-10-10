#!/bin/bash

onlyroot="Do not run this as root."
  
if [ $(whoami) == 'root' ];then
    echo -e  $COLOR$onlyroot$MONO       #"Only root can do this operation."
    #DBG_MSG  "exit 5"
    exit 0
fi

cd ~/Downloads
sudo chmod +x dependancy_install.bash
./dependancy_install.bash

sudo chmod +x lcm_install.bash
./lcm_install.bash

sudo chmod +x useful_software_install.bash
./useful_software_install.bash

sudo chmod +x vieo_card_install.bash
sudo ./vieo_card_install.bash

