#!/usr/bin/env bash

source $PWD/GlobalVariables.sh

$peerCommand lifecycle chaincode package ../storage_chaincode.tar.gz --path ../chaincode --lang node --label storage_chaincode_1.0
