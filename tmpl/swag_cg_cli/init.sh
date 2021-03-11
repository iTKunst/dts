#!/bin/bash
# shellcheck disable=SC2086


log_enter $TMPL_DIR$CMD_INIT

source $TMPL_DIR$DIR_DCKR$CMD_INIT
source ./$DIR_TMPL/env$CMD_INIT

log_exit $TMPL_DIR$CMD_INIT
