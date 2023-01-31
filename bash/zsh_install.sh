#!/usr/bin/env bash

release=$(lsb_release -a | grep Distributor|cut -f2-)
echo $release
#Debian/Ubuntu
#add key
if [ "$release" = Ubuntu ] || [ "$release" = Debian ]
then
  sudo apt-get install -y zsh
  #install prerequimentes
elif [ "$release" = Centos ] || [ "$release" = Fedora ]
then
  dnf check-update
  #install prerequimentes
  sudo dnf install -y zsh

fi

user=$(whoami)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo usermod -s /usr/bin/zsh $user