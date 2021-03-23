#!/bin/bash
# shellcheck disable=SC2086

LOG_DIR=$DIR_SLASH"log"

log_enter $DIR_BNDL$LOG_DIR$FILE_INIT

cp $DIR_BNDL$LOG_DIR$FILES $DIR_BIN

log_exit $DIR_BNDL$LOG_DIR$FILE_INIT
