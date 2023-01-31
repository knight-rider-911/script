

#Output info about used files
sudo  lsof -w /vm
sudo fuser -c /home/knight/ide/pycharm/bin

#mount disk for write
sudo mount -w /dev/sdc1 /vm/


#Ouput disks
lsblk
sudo blkid
