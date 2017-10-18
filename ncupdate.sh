#!/bin/bash

wpath="/var/www/html/backup"

cd $wpath/oefenen/node/addpage;
ncu -a;
npm update;
cd $wpath/oefenen/node/expresstut;
ncu -a;
npm update;
cd $wpath/oefenen/node/meantut;
ncu -a;
npm update;
cd $wpath/oefenen/node/nodemongo;
ncu -a;
npm update;
cd $wpath/oefenen/node/nsession;
ncu -a;
npm update;
cd $wpath/oefenen/node/session;
ncu -a;
npm update;
cd $wpath/projects/darten;
ncu -a;
npm update;
cd $wpath/projects/urlname;
ncu -a;
npm update;
cd $wpath/nodelpage;
ncu -a;
npm update;
