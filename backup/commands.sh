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

# sleep for a bit

# home pi commands:
sudo rsync -aAXvq -e ssh --exclude={"/home/"} taartr:/home/alex/ /mnt/data/Backup/temp/pi-home/;
# tar and gzip

# sleep for a bit

# home pc commands:
sudo rsync -aAXvq --exclude={"/home/.cache/*???"} /home/alex /mnt/data/Backup/temp/pc-home/;
# tar and gzip

# sleep for a bit

# root pc commands:
sudo rsync -aAXvq --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/home/*"} / /mnt/data/Backup/temp/pc-root/;
# tar and gzip

# sleep for a bit

# shutdown system

