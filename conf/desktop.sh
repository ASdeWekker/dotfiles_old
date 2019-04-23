#!/bin/bash

#====================================================
### This file is used to link configuration files in
### the system after a fresh install on the desktop.
#====================================================

# using some home variables.
home="/home/alex"
homed="/home/alex/shn/conf"
# Display all the commands used
set -x

### 1 - System folder ###
# network
sudo cp $homed/1-system/desktop.network /etc/systemd/network/eno1.network

# Fonts
sudo mkdir -p /etc/fonts/
sudo ln -sf $homed/1-system/local.conf /etc/fonts/
sudo ln -sf $homed/1-system/fonts.conf /etc/fonts/

# i3lock service file
sudo cp -f $homed/../bash/services/i3lock.service /etc/systemd/system/
sudo systemctl reenable i3lock.service

# Mouse
ln -sf $homed/1-system/imwheelrc $home/.imwheelrc

# urxvt
ln -sf $homed/1-system/xresources $home/.Xresources

# termite
ln -sf $homed/1-system/termiteconfig $home/.config/termite/config

# i3
mkdir -p $home/.config/i3
ln -sf $homed/1-system/i3config $home/.config/i3/config
ln -sf $homed/1-system/i3blocks.conf $home/.config/i3/

### 2 - Misc ###
# Samba
sudo ln -sf $homed/2-misc/desktop-smb.conf /etc/samba/smb.conf

# dunst
mkdir -p $home/.config/dunst
ln -sf $homed/2-misc/dunstrc $home/.config/dunst/

# GIMP
mkdir -p $home/.config/GIMP/2.10
ln -sf $homed/2-misc/gimp/gtkrc $home/.config/GIMP/2.10/
ln -sf $homed/2-misc/gimp/themerc $home/.config/GIMP/2.10/

# LEDs
sudo cp $homed/../bash/services/ledon.service /etc/systemd/system/
sudo systemctl enable ledon

### 4 - VFIO ###

# EOF #
