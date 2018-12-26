#!/bin/bash

sudo cp -f /var/lib/lightdm/.Xauthority /home/alex/
sudo chown alex:wheel /home/alex/.Xauthority
export AUTHORITY=/home/alex/.Xauthority
export DISPLAY=:0
