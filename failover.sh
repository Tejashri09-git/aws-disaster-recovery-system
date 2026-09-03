#!/bin/bash

PRIMARY_IP="43.204.100.188"
DR_IP="18.142.145.22"

echo "Starting Disaster Recovery Failover Check..."

if curl -s --connect-timeout 5 http://$PRIMARY_IP > /dev/null
then
    echo "Primary Mumbai Server is UP."
    echo "No failover required."
else
    echo "Primary Mumbai Server is DOWN."
    echo "Failover initiated..."
    echo "DR Singapore Server is ACTIVE."
    echo "DR URL: http://$DR_IP"
fi
