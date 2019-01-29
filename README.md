# Install scripts

Target OS: Ubuntu 16.04, Ubuntu 18.04, Debian 8 (Jessie), Debian 9 (Stretch)

* install_default.bash: recommended for PC
* install_sbc.bash: minimal installation for single-board computers
* install_tex.bash: install latex related packages
* install_full.bash: full installation

Note:

* Do not run the scripts with "sudo"
* Run "install_tex.bash" if needed. This one will take a long time and thus it is not included in "install_default.bash".
* Manually install packages in "devel2_install.bash" if your OS package repositories don't contain the same version
* Nvidia graphics card: "ubuntu_graphics_install.bash" is only tested on Ubuntu 16.04, refer to https://wiki.debian.org/NvidiaGraphicsDrivers for nvidia driver installation for Debian.
