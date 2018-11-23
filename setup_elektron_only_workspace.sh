#!/usr/bin/env bash

#compile elektron workspaces in a fakeroot environment
git clone https://github.com/RCPRG-ros-pkg/RCPRG_rosinstall
cd RCPRG_rosinstall
chmod +x setup.sh
./setup.sh -e -F build -b Release -i /opt

# coppy compiled elektron workspace to your /opt directory
sudo cp -r build/opt/ws_elektron /opt/
