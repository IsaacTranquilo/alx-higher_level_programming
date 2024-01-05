#!/bin/bash
# This script takes a URL as an argument, sends a request to that URL using curl, and displays the size of the response body in bytes.
curl -sI "$1" | grep -i "content-length" | awk '{print $2}' | tr -d '\r'

