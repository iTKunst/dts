#!/bin/bash
# shellcheck disable=SC2086


log_enter $SYS_DIR$ENV_DIR$CMD_INIT

cp $SYS_DIR$ENV_DIR$OS_DIR/*.sh .$DIR_BIN

log_exit $SYS_DIR$ENV_DIR$CMD_INIT
