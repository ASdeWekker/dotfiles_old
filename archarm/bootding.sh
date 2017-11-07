#!/bin/bash

#
# STARTUP ALL THE STUFF IM USING
#
sudo systemctl start pm2-alex
sudo systemctl start smbd;
sudo systemctl start httpd;
sudo systemctl start mongodb;
sudo systemctl start nginx;
#sudo systemctl start
#sudo systemctl start
#sudo systemctl start

# STOP ALMOST ALL THE PM2 STUFF
pm2 stop 1 2 3 4 5 6 7
