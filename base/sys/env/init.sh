#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_SYS$ENV_DIR$DIR_SLASH$FILE_INIT

cp $DIR_SYS$ENV_DIR$FILES $DIR_BIN

log_exit $DIR_SYS$ENV_DIR$DIR_SLASH$FILE_INIT
