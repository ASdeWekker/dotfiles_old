#!/bin/bash

home="/home/alex"
homed="/home/alex/shn/conf"
sudo ln -s $homed/httpd.conf /etc/httpd/conf/
sudo ln -s $homed/nginx.conf /etc/nginx/
sudo ln -s $homed/tmux.conf /etc/
sudo ln -s $homed/php.ini /etc/php/
sudo ln -s $homed/httpd/conf/extra/php7_module.conf /etc/httpd/conf/extra/
sudo ln -s $homed/httpd/conf/extra/php-fpm.conf /etc/httpd/conf/extra/
sudo ln -s $homed/httpd/conf/extra/phpmyadmin.conf /etc/httpd/conf/extra/
ln -s $homed/i3/config /home/alex/.config/i3/
ln -s $homed/.Xresources /home/alex/
mkdir $home/.bin/
ln -s $homed/dot-bin/tmuxinator.bash $home/.bin/
