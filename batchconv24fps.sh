#!/bin/bash

for i in *.MP4;
    do name=`echo $i | cut -d'.' -f1`;
    echo $name;
    ffmpeg -i "$i" -r 24 "${name}.MP4";
done
