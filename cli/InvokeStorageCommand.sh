#!/usr/bin/env bash

source $PWD/GlobalVariables.sh
source $PWD/Org1Config.sh
source $PWD/Org2Config.sh
source $PWD/OrdererConfig.sh

$peerCommand chaincode invoke -o $orderer_address \
  --ordererTLSHostnameOverride orderer.example.com \
  --tls \
  --cafile $orderer_tls_location \
  -C mychannel \
  -n simple_storage \
  --peerAddresses $org1_address \
  --tlsRootCertFiles $org1_tls_location \
  --peerAddresses $org2_address \
  --tlsRootCertFiles $org2_tls_location \
  -c '{"function":"store","Args":["greeting","HelloWorld"]}'
