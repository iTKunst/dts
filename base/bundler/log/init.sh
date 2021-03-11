#!/bin/bash
# shellcheck disable=SC2086

log_enter $DIR_BNDL$LOG_DIR$CMD_INIT

cp $DIR_BNDL$LOG_DIR$OS_DIR/*.sh .$DIR_BIN

log_exit $DIR_BNDL$LOG_DIR$CMD_INIT
