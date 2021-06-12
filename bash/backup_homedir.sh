#! /bin/bash
TARGET=/home/knight/
BCUR=/backup/current
BOLD=/backup/old
BDATE=$(date + '%d.%m.%Y_%H.%M')
FILENAME=$(hostname)_$BDATE
EXPIRE=13

tar -czvf $FILENAME.tar.gz -C /home/knight . &> $FILENAME.log