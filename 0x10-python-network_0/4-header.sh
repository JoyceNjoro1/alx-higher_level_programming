#!/bin/bash

# Send a GET request to the URL with the X-School-User-Id header
response=$(curl -sH "X-School-User-Id: 98" "$1")

# Print the response
echo "$response"

