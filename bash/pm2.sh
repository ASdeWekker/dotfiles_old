#!/bin/bash

# declare folder var.
bac=/var/www/html/backup

# make a service out of pm2 change the username if necessary.
#sudo env PATH=$PATH:/usr/lib/node_modules/pm2/bin/pm2 startup systemd -u alex --hp /home/alex

# enable it.
#sudo systemctl enable pm2-alex

# go to all the folders and start the project.
cd $bac/../de_kelder/2-bin
pm2 start de_kelder --update-env
cd $bac/oefenen/node/expresstut
pm2 start expresstut.js --update-env
cd $bac/oefenen/node/nodemongo/bin
pm2 start nodemongo --update-env
cd $bac/oefenen/node/meantut/bin
pm2 start meantut --update-env
cd $bac/oefenen/node/session/bin
pm2 start session --update-env
cd $bac/oefenen/node/addpage
pm2 start addpage.js --update-env
cd $bac/oefenen/node/nsession
pm2 start nsession.js --update-env
cd $bac/projects/darten
pm2 start darten.js --update-env
cd $bac/projects/urlname
pm2 start urlname.js --update-env
cd $bac/projects/speedtest
pm2 start speedtest.js --update-env
cd $bac/oefenen/node/postgres/2-bin
pm2 start postgres --update-env
pm2 save

# done.
echo "done"
