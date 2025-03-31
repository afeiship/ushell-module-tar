#!/usr/bin/env bash

filename=$(echo -n "$1" | sed 's/\///')
prefix="${2:-}"
suffix="${3:-}"

if [ -n "$prefix" ]; then
    filename="${prefix}_${filename}"
fi

if [ -n "$suffix" ]; then
    filename="${filename}_${suffix}"
fi

tar -czf "${filename}_$(date +"%Y%m%d_%H%M%S").tar.gz" "$1"