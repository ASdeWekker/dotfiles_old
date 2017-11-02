#!/bin/bash

echo "Updating Arch ARM..."
sudo pacman -Syu --noconfirm;
echo "...";
yaourt -Syu --noconfirm;
