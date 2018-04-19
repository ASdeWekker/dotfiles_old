#!/bin/bash

# use a command to backup the root directory once per 3 nights
# use a command to backup the home folder every night
# tar and gzip the resulting stuff in the that should be
# outputted to the temp folder in the Backup folder
# make a structure where it will eventually hold a backup
# of every month.
# figure out how to connect with ssh to the pi - figured it out!

# The backup will go as follows:
# - pi root
# - pi home
# - pc home
# - pc root


# root pi commands:
# backup
sudo rsync -aAXvq -e ssh --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/home/*"} taartr:/ /mnt/data/Backup/temp/pi-root/;
# tar and gzip
env GZIP=-9 tar cvzf /mnt/data/Backup/pi/$(date -I)-pi-root.tar.gz /mnt/data/Backup/temp/pi-root/*;
# sleep for a bit
sleep 2;
# home pi commands:
sudo rsync -aAXvq -e ssh --exclude={"/home/*/.thumbnails/*","/home/*/.cache/mozilla/*","/home/*/.cache/chromium/*","/home/*/.local/share/Trash/*","/home/*/.gvfs"} taartr:/home/alex/ /mnt/data/Backup/temp/pi-home/;
# tar and gzip
env GZIP=-9 tar cvzf /mnt/data/Backup/pi/$(date -I)-pi-home.tar.gz /mnt/data/Backup/temp/pi-home/*;
# sleep for a bit
sleep 2;
# home pc commands:
sudo rsync -aAXvq --exclude={"/home/*/.thumbnails/*","/home/*/.cache/mozilla/*","/home/*/.cache/chromium/*","/home/*/.local/share/Trash/*","/home/*/.gvfs"} /home/alex/ /mnt/data/Backup/temp/pc-home/;
# tar and gzip
env GZIP=-9 tar cvzf /mnt/data/Backup/pc/$(date -I)-pc-home.tar.gz /mnt/data/Backup/temp/pc-home/*;
# sleep for a bit
sleep 2;
# root pc commands:
sudo rsync -aAXvq --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/home/*"} / /mnt/data/Backup/temp/pc-root/;
# tar and gzip
env GZIP=-9 tar cvzf /mnt/data/Backup/pc/$(date -I)-pc-root.tar.gz /mnt/data/Backup/temp/pc-root/*;
# sleep for a bit
sleep 2;
# shutdown system
systemctl poweroff;

