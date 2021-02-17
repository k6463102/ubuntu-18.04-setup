#!/bin/bash

set -e
set -x

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install build-essential vim tmux git manpages-ja manpages-ja-dev gdebi -y
sudo apt-get install htop tree nkf curl filezilla gnome-tweaks python3-venv gimp gimp-help-ja -y
sudo apt-get install blubuntu-wallpapers edubuntu-wallpapers xubuntu-wallpapers -y

sudo apt-get autoremove -y
