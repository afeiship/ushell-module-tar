#!/usr/bin/env bash
## path:
ROOT_PATH=$(dirname $BASH_SOURCE);

alias tar-all='for file in *.tgz; do tar -zxf $file; done';

## tar tarz/tarx/ugz
alias tarz="${ROOT_PATH}/modules/tar-gz.sh";
alias tarx="${ROOT_PATH}/modules/tar-xz.sh";

alias tar-ugz='tar *.tar.gz';