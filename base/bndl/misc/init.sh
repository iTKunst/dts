#!/bin/bash
# shellcheck disable=SC2086

MISC_DIR=$DIR_SLASH"misc"

log_enter $DIR_BNDL$MISC_DIR$FILE_INIT

cp $DIR_BNDL$MISC_DIR$FILES $DIR_BIN

log_exit $DIR_BNDL$MISC_DIR$FILE_INIT
