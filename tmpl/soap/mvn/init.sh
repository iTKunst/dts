#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_TMPL_CURR$MVN_DIR$FILE_INIT

SRC=$DIR_TMPL_CURR$MVN_DIR$FILE_POM
log_var SRC $SRC

TRG=$TMPL
log_var TRG $TRG

mkdir -p $TRG

cp $SRC $TRG


log_exit $DIR_TMPL_CURR$MVN_DIR$FILE_INIT