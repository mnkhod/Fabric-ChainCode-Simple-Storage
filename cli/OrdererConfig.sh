#!/usr/bin/env bash

source $PWD/GlobalVariables.sh

orderer_address="localhost:7050"
orderer_tls_location="$fabricOrgPath/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem"
