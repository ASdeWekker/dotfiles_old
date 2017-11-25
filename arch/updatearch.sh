#!/bin/bash

echo "Updating Arch..."
sudo pacman -Syu --noconfirm;
echo "...";
yaourt -Syu --noconfirm;
