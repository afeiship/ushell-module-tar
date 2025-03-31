#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "Error: Filename is required as the first argument"
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$(echo -n "$1" | sed 's/\///')
zip -rq "${filename}.zip" "$filename" > /dev/null 2>&1