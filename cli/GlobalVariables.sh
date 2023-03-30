#!/usr/bin/env bash

fabricPath="$PWD/../../../../"

networkPath="$fabricPath/test-network"
fabricOrgPath="$networkPath/organizations"

peerCommand="$fabricPath/bin/peer"

projectPath=$PWD/..

export CORE_PEER_TLS_ENABLED=true
export FABRIC_CFG_PATH="$fabricPath/config/"
