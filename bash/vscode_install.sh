#!/usr/bin/env bash
#https://code.visualstudio.com/docs/setup/linux

release=$(lsb_release -a | grep Distributor|cut -f2-)
echo $release
#Debian/Ubuntu
#add key
if [ "$release" = Ubuntu ] || [ "$release" = Debian ]
then
  wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
  sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
  sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
  rm -f packages.microsoft.gpg
  #install
  sudo apt install apt-transport-https
  sudo apt update
  sudo apt install code # or code-insiders
elif [ "$release" = Centos ] || [ "$release" = Fedora ]
then
  sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
  sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
  #install
  dnf check-update
  sudo dnf install code
fi
