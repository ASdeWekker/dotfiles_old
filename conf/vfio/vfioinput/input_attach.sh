#!/usr/bin/env bash

sudo virsh attach-device win10 /home/alex/.VFIOinput/input_mouse.xml --current
sudo virsh attach-device win10 /home/alex/.VFIOinput/input_keyboard.xml --current
