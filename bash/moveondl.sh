#!/bin/bash

chown -R alex:wheel /srv/deluge/Downloads/complete/*;
mv /srv/deluge/Downloads/complete/* /mnt/data/videos/;
