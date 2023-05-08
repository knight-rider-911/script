#!/usr/bin/env bash

#https://www.virtualbox.org/wiki/Linux_Downloads

release=$(lsb_release -a | grep Distributor|cut -f2-)
echo $release
#Debian/Ubuntu
#add key
if [ "$release" = Ubuntu ] || [ "$release" = Debian ]
then
  echo "Your release is" $release
  release_name=$(lsb_release -a | grep -i codename|cut -f2-)
  echo "Your release name is" $release_name
  wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg
  echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian ' $release_name ' contrib' > /tmp/virtualbox.list
  cat /tmp/virtualbox.list
  sudo mv ~/tmp/virtualbox.list /etc/apt/sources.list.d/virtualbox.list
  sudo cat /etc/apt/sources.list.d/virtualbox.list
  sudo apt update
  #install prerequimentes
elif [ "$release" = Centos ] || [ "$release" = Fedora ]
then
  dnf check-update
  #install prerequimentes
  echo "Please install in non-automatic process"

fi

