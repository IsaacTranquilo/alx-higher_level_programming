#!/bin/bash

# Check if URL is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Extract the URL from the command line argument
url=$1

body_size=$(curl -sI "$url" | grep -i "content-length" | awk '{print $2}' | tr -d '\r')

# Check if Content-Length header is present in the response
if [ -z "$body_size" ]; then
    echo "Unable to determine the size of the response body."
    exit 1
fi

echo "Size of the response body: ${body_size} bytes"

