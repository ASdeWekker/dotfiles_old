#!/bin/bash

wpath="/var/www/html/backup"

cd $wpath/oefenen/node/addpage;
ncu -a;
npm update;
