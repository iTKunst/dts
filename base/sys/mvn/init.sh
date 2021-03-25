#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_SYS$MVN_DIR$FILE_INIT

TRG=$SYS
log_var TRG $TRG

SRC=$DIR_SYS$MVN_DIR$FILE_SETTINGS
log_var SRC $SRC

cp $SRC $TRG

log_exit $DIR_SYS$MVN_DIR$FILE_INIT