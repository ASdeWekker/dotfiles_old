#!/bin/bash

echo "Updating Ubuntu..."
sudo apt update;
sudo apt upgrade -y;
sudo apt full-upgrade -y;
echo "...";
sudo apt autoclean -y;
sudo apt autoremove -y;
