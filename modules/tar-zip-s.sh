#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "Error: Filename is required as the first argument"
    echo "Usage: $0 <filename> [prefix] [suffix]"
    exit 1
fi

filename=$(echo -n "$1" | sed 's/\///')
prefix="${2:-}"
suffix="${3:-}"

if [ -n "$prefix" ]; then
    filename="${prefix}_${filename}"
fi

if [ -n "$suffix" ]; then
    filename="${filename}_${suffix}"
fi

zip -rq "${filename}_$(date +"%Y%m%d_%H%M%S").zip" "$1" > /dev/null 2>&1