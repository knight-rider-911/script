#!/usr/bin/env bash

#https://realpython.com/intro-to-pyenv/
#https://github.com/pyenv/pyenv-installer

#deb
$ sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl
#rpm
sudo yum install gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite \
sqlite-devel openssl-devel xz xz-devel libffi-devel

$ curl https://pyenv.run | bash

Load pyenv automatically by adding
the following to ~/.bashrc:

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


pyenv install --list | grep " 3\.[678]"
pyenv install 3.8
pyenv global 3.9.19

#alternate

#https://linuxize.com/post/how-to-install-python-3-9-on-debian-10/

sudo apt update
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev
# https://www.python.org/downloads/source/
# version is example
wget https://www.python.org/ftp/python/3.10.10/Python-3.10.10.tgz
tar -xf Python-3.10.10.tgz
cd Python-3.10.10
./configure --enable-optimizations
make -j 2
sudo make altinstall