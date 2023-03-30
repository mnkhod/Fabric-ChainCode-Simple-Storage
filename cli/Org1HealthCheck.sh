#!/usr/bin/env bash

source $PWD/GlobalVariables.sh
source $PWD/Org1Config.sh

echo $($peerCommand channel list)
