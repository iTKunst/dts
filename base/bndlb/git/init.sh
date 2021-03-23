#!/bin/bash
# shellcheck disable=SC2086

GIT_DIR=$DIR_SLASH"git"

log_enter $DIR_BNDL$GIT_DIR$FILE_INIT

cp $DIR_BNDL$GIT_DIR$FILES $DIR_BIN

log_exit $DIR_BNDL$GIT_DIR$FILE_INIT


