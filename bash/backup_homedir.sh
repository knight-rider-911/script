#! /bin/bash

BDIR=/backup
BDATE=$(date + '%d.%m.%Y_%H.%M')
FILENAME=$BDIR/$(hostname)_$BDATE
tar -czvf $FILENAME.tar.gz -C /home/knight . &> $FILENAME.log