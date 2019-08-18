#!/bin/bash

wpath="/var/www/html/backup"

cd $wpath/oefenen/node/addpage
yarn install
cd $wpath/oefenen/node/expresstut
yarn install
cd $wpath/oefenen/node/meantut
yarn install
cd $wpath/oefenen/node/nodemongo
yarn install
cd $wpath/oefenen/node/nsession
yarn install
cd $wpath/oefenen/node/session
yarn install
cd $wpath/projects/urlname
yarn install
cd $wpath/projects/darten
yarn install
cd $wpath/projects/speedtest
yarn install
cd $wpath/../de_kelder
yarn install
cd $wpath/oefenen/postgres
yarn install
cd $wpath/projects/weight
yarn install

