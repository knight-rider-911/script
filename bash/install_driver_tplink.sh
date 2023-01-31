#!/usr/bin/env bash

release=$(lsb_release -a | grep Distributor|cut -f2-)
echo $release
#Debian/Ubuntu
#add key
if [ "$release" = Ubuntu ] || [ "$release" = Debian ]
then
  echo""
  #install prerequimentes
elif [ "$release" = Centos ] || [ "$release" = Fedora ]
then
  dnf check-update
  #install prerequimentes
  sudo dnf install kernel-devel

fi

if [ -e ~/Downloads ]; then
  echo "Directory exist!"
else mkdir -p ~/Downloads
fi

cd  ~/Downloads
rm -rf ~/Downloads/RTL88x2BU-Linux-Driver/
git clone https://github.com/RinCat/RTL88x2BU-Linux-Driver.git
cd RTL88x2BU-Linux-Driver/
make
sudo make install