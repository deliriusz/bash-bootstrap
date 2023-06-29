#!/bin/bash
# https://github.com/naddison36/sol2uml

if [ -z $2 ]; then
   NETWORK="mainnet"
   CONTRACT_ADDRESS="$1"
else
   NETWORK="$1"
   CONTRACT_ADDRESS="$2"
fi

source ~/.scripts/conf

KEY=${NETWORK_TO_KEY[$NETWORK]}
if [ -z $KEY ]; then
   echo "Could not find key for network $NETWORK. Exiting"
   exit 1
fi

sol2uml storage -n $NETWORK -k $KEY "$CONTRACT_ADDRESS"
