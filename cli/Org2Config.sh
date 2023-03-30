#!/usr/bin/env bash

source $PWD/GlobalVariables.sh

org2_address="localhost:9051"
org2_tls_location="$fabricOrgPath/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt"
org2_msp_location="$fabricOrgPath/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp"

export CORE_PEER_LOCALMSPID="Org2MSP"
export CORE_PEER_TLS_ROOTCERT_FILE="$org2_tls_location"
export CORE_PEER_MSPCONFIGPATH="$org2_msp_location"
export CORE_PEER_ADDRESS="$org2_address"
