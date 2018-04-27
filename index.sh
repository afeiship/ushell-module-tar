#!/usr/bin/env bash
## path:
ROOT_PATH=$(dirname $BASH_SOURCE);

alias tar-all='for file in *.tgz; do tar -zxf $file; done';

## zip && unzip
# alias tar-gz='tar zcf $1.tar.gz ';
# alias tar-ugz='tar *.tar.gz';