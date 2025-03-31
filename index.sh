#!/usr/bin/env bash
## path:
ROOT_PATH=$(dirname $BASH_SOURCE);

alias tar-all='for file in *.tgz; do tar -zxf $file; done';

## tar tarz/tarx/ugz
alias tz="${ROOT_PATH}/modules/tar-gz.sh";
alias tzs="${ROOT_PATH}/modules/tar-gz-s.sh";
alias tx="${ROOT_PATH}/modules/tar-xz.sh";

alias tar-ugz='tar *.tar.gz';

## zip/unzip aliases
alias tzz="${ROOT_PATH}/modules/tar-zip.sh";
alias tzzs="${ROOT_PATH}/modules/tar-zip-s.sh";
alias tzx="${ROOT_PATH}/modules/tar-unzip.sh";