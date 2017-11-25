#!/bin/bash

#
# STARTUP ALL THE STUFF IM USING
#
systemctl start smbd;
systemctl start httpd;
systemctl start mongodb;
systemctl start nginx;
systemctl start mariadb;
systemctl start pm2-alex;
#systemctl start
#systemctl start
