use a command to backup the root directory once per 3 nights
use a command to backup the home folder every night
tar and gzip the resulting stuff in the that should be
outputted to the temp folder in the Backup folder
make a structure where it will eventually hold a backup
of every month.
figure out how to connect with ssh to the pi
root pi command:
sudo rsync -aAXvq -e ssh --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/home/*"} taartr:/ /mnt/data/Backup/temp/pi-root/
home pi command:
sudo rsync -aAXvq -e ssh --exclude={"/home/"} taartr:/home/alex/ /mnt/data/Backup/temp/pi-home/
still need to figure out where exactly to store it
commands for backing up the pc
root pc command:
sudo rsync -aAXvq --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/home/*"} / /mnt/data/Backup/temp/pc-root/
home pc command:
sudo rsync -aAXvq --exclude={"/home/.cache/*???"} /home/alex /mnt/data/Backup/temp/pc-home/
