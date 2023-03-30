#!/usr/bin/env bash

source $PWD/GlobalVariables.sh

export FABRIC_CFG_PATH="$fabricPath/config/"
cd $networkPath
# CCP - File Path to ChainCode
# CCN - ChainCode Name
bash ./network.sh deployCC \
  -ccn simple_storage \
  -ccp $projectPath/chaincode \
  -ccl javascript \
  -ccv 1.0
