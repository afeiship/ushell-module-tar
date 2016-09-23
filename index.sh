#!/usr/bin/env bash
## path:
ROOT_PATH=$(dirname $BASH_SOURCE);

alias tar-all='for file in *.tgz; do tar -zxf $file; done';
