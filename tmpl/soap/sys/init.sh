#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_TMPL_CURR$SYS_DIR$FILE_INIT

SRC=$DIR_SYS$MVN_DIR$DIR_SLASH"settings.xml"
log_var SRC $SRC

TRG=$SYS
log_var TRG $TRG

mkdir -p $TRG

cp $SRC $TRG


log_exit $DIR_TMPL_CURR$SYS_DIR$FILE_INIT