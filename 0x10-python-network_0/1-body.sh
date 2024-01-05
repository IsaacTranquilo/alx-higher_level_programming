#!/bin/bash
# This script takes a URL, sends a GET request, and displays the body of the response for a 200 status code.

curl -sL -w "%{http_code}" "$1" -o /dev/null | { read code && [ $code -eq 200 ] && curl -s "$1" || echo "Error: Non-200 status code"; }

