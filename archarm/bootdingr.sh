#!/bin/bash

#
# STARTUP ALL THE STUFF IM USING
#
systemctl start pm2-alex;
systemctl start smbd;
systemctl start httpd;
systemctl start mongodb;
systemctl start nginx;
#systemctl start
#systemctl start
#systemctl start
#systemctl start
