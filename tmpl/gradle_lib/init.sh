#!/bin/bash
# shellcheck disable=SC2086


log_enter $TMPL_DIR$CMD_INIT

source $TMPL_DIR/$DCKR_DIR/init.sh
source $TMPL_DIR$DIR_ENV$CMD_INIT

log_exit $TMPL_DIR$CMD_INIT
