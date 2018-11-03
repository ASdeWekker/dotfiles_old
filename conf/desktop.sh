#!/usr/bin/env bash

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
# Fonts
sudo mkdir -p /etc/fonts/
sudo ln -sf $homed/1-system/local.conf /etc/fonts/
sudo ln -sf $homed/1-system/fonts.conf /etc/fonts/

# Mouse
ln -sf $homed/1-system/.imwheelrc $home/

# urxvt
ln -sf $homed/1-system/.Xresources $home/

# i3
mkdir -p $home/.config/i3
ln -sf $homed/1-system/i3/config $home/.config/i3/
ln -sf $homed/1-system/i3/i3blocks.conf $home/.config/i3/

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

# nvim
mkdir -p $home/.config/nvim/temp/undodir
ln -sf $homed/2-misc/init.vim $home/.config/nvim

### 4 - VFIO ###

# EOF #
