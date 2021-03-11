#!/bin/bash
# shellcheck disable=SC2086

log_enter $BNDL_DIR$LOG_DIR$CMD_INIT

cp $BNDL_DIR$LOG_DIR$OS_DIR/*.sh .$DIR_BIN

log_exit $BNDL_DIR$LOG_DIR$CMD_INIT
