#!/bin/bash
# full system upgrade for debian with apt 
# check if apt is installed 
# if [ -x "$(command -v apt)" ]; then
#     echo "apt is installed" ; sleep 3
#   sudo apt update | tee ; sudo apt upgrade -yy | tee
#   else
#     echo "apt is not installed"
# fi
# check if pacman is installed
# if [ -x "$(command -v pacman)" ]; then
#   sudo pacman -Syu
#   else
#     echo "no package manager found"
# fi
# check if distro is debian or ubuntu in lsb_release
os=$(lsb_release -is)
if [ $os == "Ubuntu" ] || [ $os == "Debian"]; then
    echo "updating $os" ; sleep 3
  sudo apt update ; sudo apt upgrade -yy 
  else
    echo "no debian distro found"
fi