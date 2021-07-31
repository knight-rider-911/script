#!/usr/bin/env bash
user=$(whoami)
sudo apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo usermod -s /usr/bin/zsh $user