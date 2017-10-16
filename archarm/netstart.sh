#!/bin/bash

sudo netctl stop eth0;
sudo ip link set eth0 down;
sudo netctl restart eth0;

sudo systemctl start pm2-alex;
