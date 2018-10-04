#!/usr/bin/env bash

sudo virsh attach-device win10 /home/alex/shn/conf/vfio/vfioinput/input_mouse.xml --current
sudo virsh attach-device win10 /home/alex/shn/conf/vfio/vfioinput/input_keyboard.xml --current
