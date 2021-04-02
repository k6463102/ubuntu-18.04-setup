#!/bin/bash

set -e
set -x

sudo apt-get install vlc -y

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome-stable_current_amd64.deb

wget https://zoom.us/client/latest/zoom_amd64.deb
sudo gdebi zoom_amd64.deb

wget https://golang.org/dl/go1.15.7.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.15.7.linux-amd64.tar.gz

wget https://nodejs.org/dist/v14.15.5/node-v14.15.5-linux-x64.tar.xz
sudo mkdir -p /usr/local/lib/nodejs
sudo tar -xJvf node-v14.15.5-linux-x64.tar.xz -C /usr/local/lib/nodejs

wget http://ftp.jaist.ac.jp/pub/CTAN/systems/texlive/Images/texlive2020-20200406.iso
sudo mkdir /media/ikeda/TeXLive2020
sudo mount -t iso9660 texlive2020-20200406.iso /media/ikeda/TeXLive2020
cd /media/ikeda/TeXLive2020/
sudo ./install-tl

echo 'export PATH=$PATH:/usr/local/texlive/2020/bin/x86_64-linux:/usr/local/lib/nodejs/node-v14.15.5-linux-x64/bin:/usr/local/go/bin' >> $HOME/.profile

source $HOME/.profile

sudo ln -s /usr/share/texmf/tex/latex/gnuplot /usr/local/texlive/texmf-local/tex/latex/gnuplot
sudo env PATH="$PATH" mktexlsr
