#!/bin/bash
# shellcheck disable=SC2086


log_enter $SYS_DIR$DIR_ENV$CMD_INIT

cp $SYS_DIR$DIR_ENV$DIR_OS/*.sh .$DIR_BIN

log_exit $SYS_DIR$DIR_ENV$CMD_INIT
