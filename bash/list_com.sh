stat file 
lsmod
modinfo
info/man
man -k password
cd -
cd .
rmdir
touch file{5..15}
mkdir dir_{a..f}
cp --verbose
cp -u #add new file
cp -l #create symlink
cp -a #copy with owner
grep -rl bash /etc/ 2> errors #/dev/null
grep -rl bash /etc/ > file 2> errors
ls dir1 dir2 dir3 &> file # concat stdout stderr
dnf install bash-completion 
\ls == "ls" == command ls
type ls type mkdir type cd
type -a ls
env
LANG=ru_RU.UTF-8 && firefox
watch "ps -ef | grep firefox"
/proc
ulimit -u
nice -n(-20 .. 19 ) / renice
ps -el
pkill -19 gedit
sudo use
su - #man su
export EDITOR -=nano
sudo su/ sudo -i 
sudoreplay
#/etc/passwd
GUID user # search
groupid
homefolder
shell
#
id
/etc/shadow
/etc/default/useradd
/etc/login.defs
/etc/skel
sudo chage -l user
usermod -m -d /home/newhomedir usr12
sticky bit # protect file in directory
sudo chmod +t file
chmod u+s / g+s #set uid
chgrp groupname file
umask -S  #remove right
getfacl
setfacl
devicehunt.com
cd /lib/modules/$(uname -r)&& vi modules.alias
modinfo radeon
ls /sys
lscpu
lspci
lsusb
lshw
hardinfo
sudo dmesg -wH
sudo modeprobe -r(remove)radeon
lsmod
udev
ls /usr/lib/udev/ruled.default
cat modules.builtin
sudo vim /etc/modules-load.d/$nameof modules.conf
sudo /etc/modprobe.d/kvm.conf
sd* scsi disk
sr* cd disk
vd* cloud
cfdisk
parted
ll -R /dev/disk
iostat -l
lsmod | grep xfs
sudo mkfs.ext4
sudo tune2fs -l /dev/sda
lsof +D /home/
blkid /dev/sdc2 | cut -d ' ' -f2
cp /etc/fstab{,.bkp}
default,noatime(не писать последний доступ к файлу)/etc/fstab
fsck /dev/sdc2
xfs_repair
structure of root /
/var/log/
sudo wipefs -a /dev/sdc
sudo resize2f /dev/sdc
sudo lvextend ... -r # extend lv with fs
pv* # pvmove
sudo lvcreate -s -n mysnapshot -L100M myvg/mylv
sudo lvconvert --merge myvg/mysnapshot
md
mdadm
sudo mdadm --create myraid1 --level=1 --raid-devices=2 /dev/sdb1 /dev/sdc1


#bash scripting
#!/usr/bin/env bash
#Checking root permissions

if [ "$(id -u)" !=0]
then
  echo root permissions required >&2
  exit 1

fi
#Variables
shell=/sbin/nologin
file=/var/users
#Check parametrs
if [ ! -z $2 ];
then
    user=$1
    group=$2
    echo Username: $user Group: $group
elif [ -f $file]
then
  user=$(cut -d' ' -f1 /var/users)
  group=$(cut -d' ' -f2 /var/users)
  echo Username: $user Group: $group
else
  echo Welcome!
  read -p "Print username: " user
  read -p "Print groupname: " group
fi
  user=$1
  group=$2
  echo Username: $user Group: $group
#user=$1
#group1=$2

groupadd $group
# Sudoers
if [ "group" = it] || [ "$group" =  security]
then
    if ! grep "%$group" /etc/sudoers
    then
      cp /etc/sudoers{,.bkp}
      echo '%'$group 'it ALL=(ALL) ALL' >> /etc/sudoers
    fi
    shell=/bin/bash
elif [ "$user" = admin]
then
    if ! grep "%$user" /etc/sudoers
    then
      cp /etc/sudoers{,.bkp}
      echo $user' ALL=(ALL) ALL' >> /etc/sudoers
    fi
    shell=/bin/bash
fi

mkdir /home/$group1
useradd $user -g $group -b /home/$group -s $shell

#script2
#!/usr/bin/env bash

if ! ls file> /dev/null
then echo Success, because exit code is $?
else echo Success, because exit code is $?
fi