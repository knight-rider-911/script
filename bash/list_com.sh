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

libreoffice --headless --convert-to csv users.xlsx
echo Hello World | tr o O

sudo vim /etc/default/grub
sudo grub2-mkconfig
sudo grub2-mkconfig | sudo tee /boot/grub2/grub.cfg
cat /lib/modules/$(uname -r)/modules.buitin | grep virtio
sudo lsinitrd /boot/initramfs-$(uname -r).img | grep virtio
systemctl get-default
systemctl list-dependencies graphical.target
sudo systemctl set-default multi-user.target
sudo systemctl reload sshd # reload without reboot
sudo systemctl mask/unmask sshd #hard disable
ls -l /dev/log
systemd-journald
systemctl status rsyslog
sudo tail /var/log/messages
sudo vim /etc/rsyslog.conf
sudo vim /etc/systemd/journald.conf
getfacl user-1000.journal
logrotate
sudo vim /etc/logrotate.conf
logger -p news.alert Hello World
at
at -l
atq
at -c
atrm
at -r
batch # execute after decrease load average low 0.8
vim /etc/crontab
crontab -l
anacron
sudo cat  /var/spool/cron/user
sudo list-timers
systemd-run --on-calendar
sudo du -sh /boot/* | sort -h | tail -3
find /home/knight -type d | wc -l
sudo find / -user root -type f - perm /u=s -exec ls -l{}\; 2>/dev/null
tar -cf /user.tar /home/knight
gzip -k user.tar
bzip2 -k user.tar
tar -czf /tmp/gzipped.tar.gz -C /home/knight/
tar -xf  gzipped.tar.gz -C restore