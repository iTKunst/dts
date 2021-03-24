#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_TMPL_CURR$DCKR_DIR$FILE_INIT

SRC_DCKR=$DIR_TMPL_CURR$DCKR_DIR$DCKR_FILE
log_var SRC_DCKR $SRC_DCKR

TRG_TMPL=$TMPL
log_var TRG_TMPL $TRG_TMPL

cp $SRC_DCKR $TRG_TMPL

log_exit $DIR_TMPL_CURR$DCKR_DIR$FILE_INIT