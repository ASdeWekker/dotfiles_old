#!/bin/bash

#========================================================
### This file is used to link configuration files in the
### system after a fresh install on a server.
#========================================================

# using some home variables.
home="/home/alex"
homed="/home/alex/shn/conf"

# Display all the commands used.
set -x

### 1 - System ###
# network
sudo cp $homed/1-system/server.network /etc/systemd/network/eno1.network

# NFS
sudo ln -sf $homed/1-system/server-nfs-exports /etc/exports

# snapRAID
sudo ln -sf $homed/1-system/snapraid.conf /etc/

### 2 - Misc ###
# Samba
sudo ln -sf $homed/2-misc/server-smb.conf /etc/samba/smb.conf

### 3 - Web ###
# DNS/BIND/NAMED
sudo cp -f $homed/3-web/named.conf /etc/
sudo ln -sf $homed/3-web/test.local.zone /var/named/

# EOF 

