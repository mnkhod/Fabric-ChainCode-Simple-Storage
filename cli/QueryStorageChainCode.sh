#!/usr/bin/env bash

fabricPath="$PWD/../../../../"

networkPath="$fabricPath/test-network"
fabricOrgPath="$networkPath/organizations"

peerCommand="$fabricPath/bin/peer"

export CORE_PEER_TLS_ENABLED=true
export FABRIC_CFG_PATH="$fabricPath/config/"

export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE="$fabricOrgPath/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt"
export CORE_PEER_MSPCONFIGPATH="$fabricOrgPath/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp"
export CORE_PEER_ADDRESS="localhost:7051"

$peerCommand chaincode query \
  -C mychannel \
  -n simple_storage \
  -c '{"function":"viewStore","Args":["greeting"]}'
