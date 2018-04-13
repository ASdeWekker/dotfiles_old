#!/bin/bash

#ssh root@taaart dd if=/dev/mmcblk0 bs=1M | pv | gzip -c > /mnt/data/Backup/taaart/$(date -I)-taaart.gz
touch /mnt/data/Backup/taaart/$(date -I)-taaart.gz
systemctl poweroff
