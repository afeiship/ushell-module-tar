#!/usr/bin/env bash
filename=$(echo -n "$1" | sed 's/\///')
tar zxf $filename.tar.gz