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

ordererAddress="localhost:7050"
ordererTlsLocation="$fabricOrgPath/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem"

org1Address="localhost:7051"
org1TlsLocation="$fabricOrgPath/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt"

org2Address="localhost:9051"
org2TlsLocation="$fabricOrgPath/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt"

$peerCommand chaincode invoke -o $ordererAddress \
  --ordererTLSHostnameOverride orderer.example.com \
  --tls \
  --cafile $ordererTlsLocation \
  -C mychannel \
  -n simple_storage \
  --peerAddresses $org1Address \
  --tlsRootCertFiles $org1TlsLocation \
  --peerAddresses $org2Address \
  --tlsRootCertFiles $org2TlsLocation \
  -c '{"function":"store","Args":["greeting","HelloWorld"]}'
