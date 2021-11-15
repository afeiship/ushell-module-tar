#!/usr/bin/env bash
filename=$(echo -n "$1" | sed 's/\///')
tar zcf $filename.tar.gz $filename