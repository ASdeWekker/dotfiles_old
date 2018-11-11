#!/bin/bash

#========================================================
### This file is used to link configuration files in the
### system after a fresh install on a Raspberry Pi.
#========================================================

# using some home variables.
home="/home/alex"
homed="/home/alex/shn/conf"
# Display all the commands used
set -x

### 1 - System ###
# network
sudo cp $homed/1-system/eth0.network /etc/systemd/network/

### 2 - Misc ###
# Samba
sudo ln -sf $homed/2-misc/rpi-smb.conf /etc/samba/smb.conf

### 3 - Web ###
# php-fpm for pihole
sudo mkdir -p /etc/php/php-fpm.d
sudo ln -sf $homed/3-web/php-fpm-www.conf /etc/php/php-fpm.d/www.conf
# nginx for pihole
sudo mkdir -p /etc/nginx/conf.d
sudo ln -sf $homed/3-web/pihole.conf /etc/nginx/conf.d/

# EOF #
