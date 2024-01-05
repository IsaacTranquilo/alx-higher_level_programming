#!/bin/bash
# This script takes a URL as an argument, sends a request to the URL using curl, and displays all HTTP methods the server will accept.

curl -sI -X OPTIONS "$1" | grep -i "allow" | cut -d " " -f 2-
