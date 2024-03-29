#!/usr/bin/env bash
# https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
git config --global user.email "jmen.org@gmail.com"
git config --global user.name "Michael Ch"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# generation key pair

ssh-keygen -t ed25519 -C "your_email@example.com"
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"