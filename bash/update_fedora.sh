#!/usr/bin/env bash

#link https://docs.fedoraproject.org/en-US/quick-docs/dnf-system-upgrade/#Resolving_post-upgrade_issues

sudo dnf upgrade --refresh
sudo dnf install dnf-plugin-system-upgrade
sudo dnf system-upgrade download --releasever=34
sudo dnf system-upgrade reboot