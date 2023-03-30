#!/usr/bin/env bash

source $PWD/Org1Config.sh

$peerCommand chaincode query \
  -C mychannel \
  -n simple_storage \
  -c '{"function":"viewStore","Args":["greeting"]}'
