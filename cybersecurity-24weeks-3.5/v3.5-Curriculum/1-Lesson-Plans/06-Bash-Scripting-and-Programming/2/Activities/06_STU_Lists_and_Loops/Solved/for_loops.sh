#!/bin/bash

# List of hosts to check
hosts=(
  "8.8.8.8"
  "8.8.4.4"
  "1.1.1.1"
)

# List of ports to check
ports=(
  "80"
  "443"
)

# Loop through each host
for host in "${hosts[@]}"; do
  echo "Checking connectivity to host: $host"

  # Check if host is reachable
  if ping -c 1 "$host" &> /dev/null; then
    echo "Host $host is reachable."
    
    # Nested loop to check each port on the current host
    for port in "${ports[@]}"; do
      if nc -z -w 1 "$host" "$port" &> /dev/null; then
        echo "Port $port is open on host $host."
      else
        echo "Port $port is NOT open on host $host."
      fi
    done
  else
    echo "Host $host is NOT reachable."
  fi

  # Add a blank line for readability
  echo
done
