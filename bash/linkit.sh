#!/bin/bash

ulb="/usr/local/bin"
shn="/home/alex/shn/bash"
sudo ln -sf $shn/batchconv1080p.sh $ulb/conv1080
sudo ln -sf $shn/batchconv24fps.sh $ulb/conv24
sudo ln -sf $shn/suspends.sh $ulb/slp
sudo ln -sf $shn/runaswine.sh $ulb/wijn
sudo ln -sf $shn/mongot.sh $ulb/
sudo ln -sf $shn/gitcommit.sh $ulb/gitt
