#!/usr/bin/env bash

#======================================================
### This file is used to link every configuration file
### in the system after a fresh install.
#======================================================

# using some home variables.
home="/home/alex"
homed="/home/alex/shn/conf"

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
# Samba, moet nog even verschil gemaakt worden tussen desktop en rpi

# dunst
mkdir -p $home/.config/dunst
ln -sf $homed/2-misc/dunstrc $home/.config/dunst/

# GIMP
mkdir -p $home/.config/GIMP/2.10
ln -sf $homed/2-misc/gimp/gtkrc $home/.config/GIMP/2.10/
ln -sf $homed/2-misc/gimp/themerc $home/.config/GIMP/2.10/

# htop
mkdir -p $home/.config/htop
ln -sf $homed/2-misc/htoprc $home/.config/htop/

# nvim
mkdir -p $home/.config/nvim/temp/undodir
ln -sf $homed/2-misc/init.vim $home/.config/nvim

### 3 - Web ###
# Apache
sudo mkdir -p /etc/httpd/conf/extra
sudo ln -sf $homed/3-web/httpd.conf /etc/httpd/conf/

# NGINX
sudo mkdir -p /etc/nginx/
sudo ln -sf $homed/3-web/nginx.conf /etc/nginx/

# PHPMyAdmin
sudo ln -sf $homed/3-web/phpmyadmin.conf /etc/httpd/conf/extra/

# PHP
sudo mkdir -p /etc/php
sudo ln -sf $homed/3-web/php.ini /etc/php/
sudo ln -sf $homed/3-web/php7_module.conf /etc/httpd/conf/extra/
sudo ln -sf $homed/3-web/php-fpm.conf /etc/httpd/conf/extra/

### 4 - VFIO ###

### 5 - Tmux ###
# tmux configuration file
sudo ln -sf $homed/5-tmux/tmux.conf /etc/
# tmuxinator bash
mkdir -p $home/.bin
ln -sf $homed/5-tmux/tmuxinator.bash $home/.bin/
# yaml files
mkdir -p $home/.config/tmuxinator
ln -sf $homed/5-tmux/alles.yml $home/.config/tmuxinator/
ln -sf $homed/5-tmux/cv.yml $home/.config/tmuxinator/
ln -sf $homed/5-tmux/grassbot.yml $home/.config/tmuxinator/
ln -sf $homed/5-tmux/hmma.yml $home/.config/tmuxinator/
ln -sf $homed/5-tmux/hmmm.yml $home/.config/tmuxinator/
ln -sf $homed/5-tmux/hmm.yml $home/.config/tmuxinator/

# EOF #
