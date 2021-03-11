#!/bin/bash
# shellcheck disable=SC2086


log_enter $TMPL_DIR$DIR_ENV$CMD_INIT

cp ./$TMPL_DIR/env/linux/pENV.sh ./bin

log_exit $TMPL_DIR$DIR_ENV$CMD_INIT