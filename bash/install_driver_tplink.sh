#sudo dnf install kernel-devel

if [ -e ~/Downloads ]; then
  echo "Directory exist!"
else mkdir ~/Downloads
fi

cd  ~/Downloads
rm -rf ~/Downloads/RTL88x2BU-Linux-Driver/
git clone https://github.com/RinCat/RTL88x2BU-Linux-Driver.git
cd RTL88x2BU-Linux-Driver/
make
sudo make install