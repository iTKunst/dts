#!/bin/bash
# shellcheck disable=SC2086


log_enter $TMPL_DIR$DIR_ENV$CMD_INIT

cp ./$DIR_TMPL/env/linux/pENV.sh ./bin

log_exit /$DIR_TMPL/env/init