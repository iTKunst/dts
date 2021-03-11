#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_SYS$ENV_DIR$CMD_INIT

cp $DIR_SYS$ENV_DIR$OS_DIR/*.sh .$DIR_BIN

log_exit $DIR_SYS$ENV_DIR$CMD_INIT
