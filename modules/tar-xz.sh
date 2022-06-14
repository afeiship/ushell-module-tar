#!/usr/bin/env bash
filename=$(echo -n "$1" | sed 's/\///')

if [[ $filename == *"gz"* ]]; then
  tar zxf $filename
else
  tar zxf $filename.tar.gz
fi