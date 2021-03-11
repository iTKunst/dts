#!/bin/bash
# shellcheck disable=SC2086


log_enter $TMPL_DIR$CMD_INIT

source ./$DIR_TMPL$DCKR_DIR/init.sh
source ./$DIR_TMPL/env/init.sh

log_exit $TMPL_DIR$CMD_INIT