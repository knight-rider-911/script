#!/usr/bin/env bash
#how to How To Migrate To CentOS Stream 8 From CentOS Linux 8
#https://ostechnix.com/how-to-migrate-to-centos-stream-8-from-centos-linux-8/
sudo dnf install centos-release-stream
sudo dnf swap centos-{linux,stream}-repos
sudo dnf distro-sync
