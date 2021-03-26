#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_TMPL_CURR$ENV_DIR$FILE_INIT

SRC=$DIR_TMPL_CURR$ENV_DIR$OS_DIR$TMPL_ENV_FILE
log_var SRC $SRC

TRG=$DIR_BIN
log_var TRG $TRG

cp $SRC $TRG

log_exit $DIR_TMPL_CURR$ENV_DIR$FILE_INIT