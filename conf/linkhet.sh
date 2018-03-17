#!/bin/bash

homed="/home/alex/shn/conf"
sudo ln -s $homed/httpd.conf /etc/httpd/conf/
sudo ln -s $homed/nginx.conf /etc/nginx/
sudo ln -s $homed/tmux.conf /etc/
sudo ln -s $homed/php.ini /etc/php/
sudo ln -s $homed/httpd/conf/extra/php7_module.conf /etc/httpd/conf/extra/
sudo ln -s $homed/httpd/conf/extra/php-fpm.conf /etc/httpd/conf/extra/
