#!/bin/bash

# Declare variables
home="/home/alex"
homed="/home/alex/shn/conf"

# Apache
sudo ln -sf $homed/httpd.conf /etc/httpd/conf/
# NGINX
sudo ln -sf $homed/nginx.conf /etc/nginx/
# tmux
sudo ln -sf $homed/tmux.conf /etc/
# PHP
sudo ln -sf $homed/php.ini /etc/php/
sudo ln -sf $homed/httpd/conf/extra/php7_module.conf /etc/httpd/conf/extra/
sudo ln -sf $homed/httpd/conf/extra/php-fpm.conf /etc/httpd/conf/extra/
# PHPmyadmin
sudo ln -sf $homed/httpd/conf/extra/phpmyadmin.conf /etc/httpd/conf/extra/
# i3
ln -sf $homed/i3/config /home/alex/.config/i3/
# urxvt
ln -sf $homed/.Xresources /home/alex/
# tmuxinator
mkdir $home/.bin/
ln -sf $homed/dot-bin/tmuxinator.bash $home/.bin/
# GIMP
ln -sf $homed/GIMP/2.10/gtkrc $home/.config/GIMP/2.10/
ln -sf $homed/GIMP/2.10/themerc $home/.config/GIMP/2.10/
# htop
ln -sf $homed/htoprc $home/.config/htop/
# fonts
sudo ln -sf $homed/etc/fonts/local.conf /etc/fonts/
sudo ln -sf $homed/etc/fonts/fonts.conf /etc/fonts/
# mouse buttons
ln -sf $homed/.imwheelrc $home/
# nvim
mkdir -p $home/.config/nvim/
mkdir -p $home/.config/nvim/temp/undodir
ln -s $homed/init.vim $home/.config/nvim/
