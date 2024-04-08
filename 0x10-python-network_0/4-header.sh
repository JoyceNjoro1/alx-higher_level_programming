#!/bin/bash

# Check if the URL argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# URL provided as argument
URL=$1

# Send GET request with custom header and display response body
curl -sSL -H "X-School-User-Id: 98" "$URL"

