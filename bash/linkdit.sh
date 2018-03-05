#!/bin/bash

ulb="/usr/local/bin"
shn="/home/alex/shn/bash"
sudo ln -s $shn/dag.sh $ulb/doei
sudo ln -s $shn/gedag.sh $ulb/doeii
sudo ln -s $shn/batchconv1080p.sh $ulb/conv1080
sudo ln -s $shn/batchconv24fps.sh $ulb/conv24
sudo ln -s $shn/suspends.sh $ulb/slp
