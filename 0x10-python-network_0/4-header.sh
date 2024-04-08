#!/bin/bash
# Send a GET request to a given URL with a header variable.
curl -sH "X-HolbertonSchool-User-Id: 98" "${1}"

if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi
