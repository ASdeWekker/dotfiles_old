#!/bin/bash

commitmessage=$1
push=$2

git status
git add -A
git commit -m "$commitmessage"

if [ $push == "y" ]; then
    git push
    git status
else
    git status
fi
