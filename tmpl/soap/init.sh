#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_TMPL$FILE_INIT

source $DIR_TMPL_CURR$DCKR_DIR$FILE_INIT
source $DIR_TMPL_CURR$ENV_DIR$FILE_INIT

SYS=$DIR_SLASH"sys"
source $DIR_TMPL_CURR$SYS$FILE_INIT

log_exit $DIR_TMPL$FILE_INIT