#!/bin/bash

#
# STARTUP ALL THE STUFF IM USING
#
systemctl start smbd;
systemctl start httpd;
systemctl start mongodb;
systemctl start nginx;
systemctl start mariadb;
systemctl start cronie;
systemctl start dnsmasq;
systemctl start openvpn-server@server.service;
systemctl start php-fpm
#systemctl start
#systemctl start pm2-alex;
