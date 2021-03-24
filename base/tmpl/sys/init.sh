#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_BASE$TMPL_DIR$SYS_DIR$FILE_INIT

SRC=$DIR_SYS$MVN_DIR$FILE_SETTINGS
log_var SRC $SRC

TRG=$SYS
log_var TRG $TRG

mkdir -p $TRG

cp $SRC $TRG


log_exit $DIR_BASE$TMPL_DIR$SYS_DIR$FILE_INIT