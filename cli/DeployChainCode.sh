#!/usr/bin/env bash

fabricPath=$PWD/../../../..
projectPath=$PWD/..
networkPath=$fabricPath/test-network
peerCommand=$fabricPath/bin/peer

export FABRIC_CFG_PATH="$fabricPath/config/"
cd $networkPath
# CCP - File Path to ChainCode
# CCN - ChainCode Name
bash ./network.sh deployCC \
  -ccn simple_storage \
  -ccp $projectPath/chaincode \
  -ccl javascript \
  -ccv 1.0
