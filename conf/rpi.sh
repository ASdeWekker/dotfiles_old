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

### 2 - Misc ###
# Samba
sudo ln -sf $homed/2-misc/rpi-smb.conf /etc/samba/smb.conf

# EOF #
