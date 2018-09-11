#!/bin/bash

home="/home/alex"
homed="/home/alex/shn/conf"
sudo ln -sf $homed/httpd.conf /etc/httpd/conf/
sudo ln -sf $homed/nginx.conf /etc/nginx/
sudo ln -sf $homed/tmux.conf /etc/
sudo ln -sf $homed/php.ini /etc/php/
sudo ln -sf $homed/httpd/conf/extra/php7_module.conf /etc/httpd/conf/extra/
sudo ln -sf $homed/httpd/conf/extra/php-fpm.conf /etc/httpd/conf/extra/
sudo ln -sf $homed/httpd/conf/extra/phpmyadmin.conf /etc/httpd/conf/extra/
ln -sf $homed/i3/config /home/alex/.config/i3/
ln -sf $homed/.Xresources /home/alex/
mkdir $home/.bin/
ln -sf $homed/dot-bin/tmuxinator.bash $home/.bin/
ln -sf $homed/GIMP/2.10/gtkrc $home/.config/GIMP/2.10/
ln -sf $homed/GIMP/2.10/themerc $home/.config/GIMP/2.10/
ln -sf $homed/htoprc $home/.config/htop/
sudo ln -sf $homed/etc/fonts/local.conf /etc/fonts/
sudo ln -sf $homed/etc/fonts/fonts.conf /etc/fonts/
