#!/usr/bin/env bash

#https://www.virtualbox.org/wiki/Linux_Downloads
release_name=$(lsb_release -a | grep -i codename|cut -f2-)
echo $release_name
wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian ' $release_name ' contrib' > ~/tmp/virtualbox.list
mkdir -p ~/tmp
cat ~/tmp/virtualbox.list
sudo cp ~/tmp/vb.list /etc/apt/sources.list.d/virtualbox.list
sudo cat /etc/apt/sources.list.d/virtualbox.list
sudo apt update