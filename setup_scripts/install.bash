#!/bin/bash
  onlyroot="Do not run this as root."
  
if [ $(whoami) == 'root' ];then
    echo -e  $COLOR$onlyroot$MONO       #"Only root can do this operation."
    #DBG_MSG  "exit 5"
    exit 0
fi

cd ~/Downloads
wget -N https://raw.github.com/rxdu/workspace_setup/master/setup_scripts/dependancy_install.bash
sudo chmod +x dependancy_install.bash
./dependancy_install.bash

cd ~/Downloads
wget -N https://raw.github.com/rxdu/workspace_setup/master/setup_scripts/useful_software_install.bash
sudo chmod +x useful_software_install.bash
./useful_software_install.bash

cd ~/Downloads
wget -N https://raw.github.com/rxdu/workspace_setup/master/setup_scripts/vieo_card_install.bash
sudo chmod +x vieo_card_install.bash
sudo ./vieo_card_install.bash

