#!/bin/bash

# Take the URL as an argument
url=$1

# Send a GET request with the specified header using curl
response=$(curl -s -H "X-School-User-Id: 98" "$url")

# Check if the response is empty
if [ -z "$response" ]; then
    echo "Error: Empty response received"
    exit 1
fi

# Display the response
echo "$response"

