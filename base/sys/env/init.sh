#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_SYS$ENV_DIR$CMD_INIT

log_var DIR_BIN $DIR_BIN

cp $DIR_SYS$ENV_DIR$FILES $DIR_BIN

log_exit $DIR_SYS$ENV_DIR$CMD_INIT
