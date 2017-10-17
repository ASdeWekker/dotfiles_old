#!/bin/bash

sudo systemctl start smbd;
sudo systemctl start httpd;
sudo systemctl start mongodb;
sudo systemctl start nginx;
sudo systemctl start pm2-alex;
#sudo systemctl start
#sudo systemctl start
#sudo systemctl start
