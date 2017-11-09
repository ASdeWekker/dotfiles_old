#!/bin/bash

# Location where the files are located
filesloc="/home/alex/shn/tmux"
# Location where the files are needed
linkloc="/home/alex/.config/tmuxinator/"

# For loop to grab all the .yml files and link them
for i in *.yml;
    do echo $i;
    ln -s $filesloc/$i $linkloc;
done
