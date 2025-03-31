#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "Error: Filename is required as the first argument"
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$(echo -n "$1" | sed 's/\///')

if [[ $filename == *".zip"* ]]; then
    unzip -q "$filename" > /dev/null 2>&1
else
    unzip -q "${filename}.zip" > /dev/null 2>&1
fi