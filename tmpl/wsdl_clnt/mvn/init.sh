#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_TMPL_CURR$MVN_DIR$FILE_INIT

SRC=$DIR_TMPL_CURR$MVN_DIR
log_var SRC $SRC

TRG=code
log_var TRG $TRG

if [ ! -f $TRG/pom.xml ]; then
  cp $SRC/pom.sample.xml $TRG/pom.xml
fi

log_exit $DIR_TMPL_CURR$MVN_DIR$FILE_INIT

