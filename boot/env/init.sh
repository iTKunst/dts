#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_ENV$FILE_INIT

  cp $DIR_ENV$FILES $DIR_BIN

  source $FILE_ENV

log_exit $DIR_ENV$FILE_INIT
