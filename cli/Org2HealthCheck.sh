#!/usr/bin/env bash

source $PWD/GlobalVariables.sh
source $PWD/Org2Config.sh

echo $($peerCommand channel list)
