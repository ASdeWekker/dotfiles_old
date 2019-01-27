#!/bin/bash

# declare folder var.
bac=/var/www/html/backup

# make a service out of pm2 change the username if necessary.
#sudo env PATH=$PATH:/usr/lib/node_modules/pm2/bin/pm2 startup systemd -u alex --hp /home/alex

# enable it.
#sudo systemctl enable pm2-alex

# go to all the folders and start the project.
cd $bac/../de_kelder
PM2_HOME=$HOME/.pm2p pm2 start --update-env
cd $bac/oefenen/node/expresstut
PM2_HOME=$HOME/.pm2o pm2 start --update-env
cd $bac/oefenen/node/nodemongo
PM2_HOME=$HOME/.pm2o pm2 start --update-env
cd $bac/oefenen/node/meantut
PM2_HOME=$HOME/.pm2o pm2 start --update-env
cd $bac/oefenen/node/session
PM2_HOME=$HOME/.pm2o pm2 start --update-env
cd $bac/oefenen/node/addpage
PM2_HOME=$HOME/.pm2o pm2 start --update-env
cd $bac/oefenen/node/postgres
PM2_HOME=$HOME/.pm2o pm2 start --update-env
cd $bac/projects/darten
PM2_HOME=$HOME/.pm2p pm2 start --update-env
cd $bac/projects/urlname
PM2_HOME=$HOME/.pm2p pm2 start --update-env
cd $bac/projects/speedtest
PM2_HOME=$HOME/.pm2p pm2 start --update-env

PM2_HOME=$HOME/.pm2o pm2 save
PM2_HOME=$HOME/.pm2p pm2 save

# done.
echo "done"
