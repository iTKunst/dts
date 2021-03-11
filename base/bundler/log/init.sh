#!/bin/bash
# shellcheck disable=SC2086

log_enter $BNDL_DIR$DIR_LOG$CMD_INIT

cp $BNDL_DIR$DIR_LOG$DIR_OS/*.sh .$DIR_BIN

log_exit $BNDL_DIR$DIR_LOG$CMD_INIT
