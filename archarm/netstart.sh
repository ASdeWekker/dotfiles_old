#!/bin/bash

netctl stop eth0;
ip link set eth0 down;
netctl restart eth0;
