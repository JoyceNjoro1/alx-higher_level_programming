#!/bin/bash

# Take the URL as an argument
url="$1"

# Send a GET request to the URL with the header X-School-User-Id: 98
response=$(curl -s -H "X-School-User-Id: 98" "$url")

# Check if the response contains the expected message
if [[ "$response" == *"OK"* ]]; then
    echo "OK"
else
    echo "Error: Unexpected response"
    echo "$response"
fi

