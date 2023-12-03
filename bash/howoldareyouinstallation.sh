#!/usr/bin/env bash

#https://pc.ru/articles/kak-uznat-datu-ustanovki-linux


#date and time installation linux system from filesystem properties 

sudo tune2fs -l $(df / | tail -1 | cut -f1 -d' ') | grep created

#Example output  Filesystem created:       Wed Feb  1 03:52:37 2017

#Date from oldest file on filesystem


ls --time-style=long-iso -clt / | tail -n 1 | awk '{ print $7, $6}'

# Example output 03:52 2017-02-01
