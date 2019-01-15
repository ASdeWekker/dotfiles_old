#!/bin/bash

# declare folder var.
bac=/var/www/html/backup

# make a service out of pm2 change the username if necessary.
#sudo env PATH=$PATH:/usr/lib/node_modules/pm2/bin/pm2 startup systemd -u alex --hp /home/alex

# enable it.
#sudo systemctl enable pm2-alex

# go to all the folders and start the project.
cd $bac/../de_kelder
pm2 start --update-env
cd $bac/oefenen/node/expresstut
pm2 start --update-env
cd $bac/oefenen/node/nodemongo
pm2 start --update-env
cd $bac/oefenen/node/meantut
pm2 start --update-env
cd $bac/oefenen/node/session
pm2 start --update-env
cd $bac/oefenen/node/addpage
pm2 start --update-env
cd $bac/oefenen/node/postgres
pm2 start --update-env
cd $bac/projects/darten
pm2 start --update-env
cd $bac/projects/urlname
pm2 start --update-env
cd $bac/projects/speedtest
pm2 start --update-env
pm2 save

# done.
echo "done"
