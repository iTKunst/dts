#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_BOOT$ENV_DIR$FILE_INIT

  cp $DIR_BOOT$ENV_DIR$FILES $DIR_BIN

  source $FILE_ENV

log_exit $DIR_BOOT$ENV_DIR$FILE_INIT
