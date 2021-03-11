#!/bin/bash
# shellcheck disable=SC2086


log_enter /$DIR_TMPL/init

source $TMPL_DIR$DIR_DCKR$CMD_INIT
source $TMPL_DIR$DIR_ENV$CMD_INIT

log_exit /$DIR_TMPL/init
