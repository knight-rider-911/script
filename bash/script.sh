#Add virtualbox repository
cd /etc/yum.repos.d/
wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo

#Output info about used files
sudo  lsof -w /vm
sudo fuser -c /home/knight/ide/pycharm/bin

#mount disk for write
sudo mount -w /dev/sdc1 /vm/


#Ouput disks
lsblk
sudo blkid
