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


# location of the backup folder:
bloc="/mnt/backup"

# root pi commands:
# backup
rsync -aAXvq -e ssh --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/home/*"} taartr:/ $bloc/temp/pi-root/

# tar and gzip
env GZIP=-9 tar cvzf $bloc/pi/$(date -I)-pi-root.tar.gz $bloc/temp/pi-root/*

# sleep for a bit
sleep 2

# home pi commands:
rsync -aAXvq -e ssh --exclude={"/home/*/.thumbnails/*","/home/*/.cache/mozilla/*","/home/*/.cache/chromium/*","/home/*/.local/share/Trash/*","/home/*/.gvfs"} taartr:/home/alex/ $bloc/temp/pi-home/

# tar and gzip
env GZIP=-9 tar cvzf $bloc/pi/$(date -I)-pi-home.tar.gz $bloc/temp/pi-home/*

# sleep for a bit
sleep 2

# home pc commands:
rsync -aAXvq --exclude={"/home/*/.thumbnails/*","/home/*/.cache/mozilla/*","/home/*/.cache/chromium/*","/home/*/.local/share/Trash/*","/home/*/.gvfs"} /home/alex/ $bloc/temp/pc-home/

# tar and gzip
env GZIP=-9 tar cvzf $bloc/pc/$(date -I)-pc-home.tar.gz $bloc/temp/pc-home/*

# sleep for a bit
sleep 2

# root pc commands:
rsync -aAXvq --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/home/*"} / $bloc/temp/pc-root/

# tar and gzip
env GZIP=-9 tar cvzf $bloc/pc/$(date -I)-pc-root.tar.gz $bloc/temp/pc-root/*

# sleep for a bit
sleep 2

# shutdown system
systemctl suspend

