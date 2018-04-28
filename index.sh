#!/usr/bin/env bash
## path:
ROOT_PATH=$(dirname $BASH_SOURCE);

alias tar-all='for file in *.tgz; do tar -zxf $file; done';

## tar gz/ugz
alias tar-gz="${ROOT_PATH}/tar-gz.sh";
alias tar-ugz='tar *.tar.gz';