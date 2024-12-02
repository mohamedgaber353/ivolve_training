#!/bin/bash

# Loop through all possible values for x (0 to 255)
for x in {0..255}; do
    # Construct the IP address
    IP="192.168.1.$x"
    
    # Ping the IP address with a timeout of 1 second (-c 1 sends one ping, -W 1 waits 1 second)
    ping -c 1 -W 1 $IP > /dev/null 2>&1
    
    # Check the exit status of the ping command
    if [ $? -eq 0 ]; then
        echo "Server $IP is up and running"
    else
        echo "Server $IP is unreachable"
    fi
done
