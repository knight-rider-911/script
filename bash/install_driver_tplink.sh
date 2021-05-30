sudo dnf install kernel-devel
mkdir ~/Downloads
cd  ~/Downloads
git clone https://github.com/RinCat/RTL88x2BU-Linux-Driver.git
git pull
cd RTL88x2BU-Linux-Driver/
make
sudo make install