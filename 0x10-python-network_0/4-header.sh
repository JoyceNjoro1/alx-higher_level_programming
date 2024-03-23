#!/bin/bash

# Check if URL argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Set the URL
URL="$1"

# Send GET request with header
curl -sH "X-School-User-Id: 98" "$URL"

