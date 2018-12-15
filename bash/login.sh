#!/bin/bash

cp -f /var/lib/lightdm/.Xauthority /home/alex/
su - root -c "export XAUTHORITY=/home/alex/.Xauthority"
su - root -c "export DISPLAY=:0"
