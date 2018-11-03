#!/usr/bin/env bash

#======================================================
### This file is used to link every configuration file
### in the system after a fresh install.
#======================================================

# Using some home variables.
home="/home/alex"
homed="/home/alex/shn/conf"
# Display all the commands used
set -x

# Ask if the file is being used on the desktop or
# a Raspberry Pi and act accordingly.


### 2 - Misc ###
# htop
mkdir -p $home/.config/htop
ln -sf $homed/2-misc/htoprc $home/.config/htop/

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
