#!/usr/bin/env bash

fabricPath=$PWD/../../../..
peerCommand=$fabricPath/bin/peer

export FABRIC_CFG_PATH="$fabricPath/config/"

$peerCommand lifecycle chaincode package ../storage_chaincode.tar.gz --path ../chaincode --lang node --label storage_chaincode_1.0
