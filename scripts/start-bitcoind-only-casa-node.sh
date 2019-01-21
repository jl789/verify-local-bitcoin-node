#!/bin/bash

source config

echo "Restricting outgoing traffic to LAN..."
sudo ./firewall-only-lan-outgoing.sh

echo "Starting bitcoind, listening only to target node..."
bitcoind -daemon --datadir=${BITCOIND_PATH} --addnode=${SOURCE_NODE_IP} -noconnect
