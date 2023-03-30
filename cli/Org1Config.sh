#!/usr/bin/env bash

source $PWD/GlobalVariables.sh

org1_address="localhost:7051"
org1_tls_location="$fabricOrgPath/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt"
org1_msp_location="$fabricOrgPath/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp"

export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE="$org1_tls_location"
export CORE_PEER_MSPCONFIGPATH="$org1_msp_location"
export CORE_PEER_ADDRESS="$org1_address"
