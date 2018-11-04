#!/bin/bash

# declare folder var.
bac=/var/www/html/backup

# make a service out of pm2 change the username if necessary.
sudo env PATH=$PATH:/usr/lib/node_modules/pm2/bin/pm2 startup systemd -u alex --hp /home/alex

# enable it.
sudo systemctl enable pm2-alex

# go to all the folders and start the project.
cd $bac/nodelpage
pm2 start nodelpage.js
cd $bac/oefenen/node/expresstut
pm2 start expresstut.js
cd $bac/oefenen/node/nodemongo/bin
pm2 start nodemongo
cd $bac/oefenen/node/meantut/bin
pm2 start meantut
cd $bac/oefenen/node/session/bin
pm2 start session
cd $bac/oefenen/node/addpage
pm2 start addpage.js
cd $bac/oefenen/node/nsession
pm2 start nsession.js
cd $bac/projects/darten
pm2 start darten.js
cd $bac/projects/urlname
pm2 start urlname.js
cd $bac/projects/speedtest
pm2 start speedtest.js
pm2 save

# done.
echo "done"
