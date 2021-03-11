#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_TMPL_CURR$CMD_INIT

source $DIR_TMPL_CURR$DCKR_DIR$CMD_INIT
source ./$DIR_TMPL/env$CMD_INIT

log_exit $DIR_TMPL_CURR$CMD_INIT
