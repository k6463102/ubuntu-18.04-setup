#!/bin/bash

set -e
set -x

LANG=C xdg-user-dirs-gtk-update

gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:nocaps']"
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true

wget https://github.com/miiton/Cica/releases/download/v5.0.2/Cica_v5.0.2_with_emoji.zip
unzip Cica_v5.0.2_with_emoji.zip -d Cica
cd Cica
mkdir -p ~/.fonts
cp *.ttf ~/.fonts/
