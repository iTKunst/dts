#!/bin/bash
# shellcheck disable=SC2086

DIR=$DIR_DTS$DIR_BASE$DIR_BUNDLER$DIR_ENV

log_enter $DIR$CMD_INIT

log_var DIR $DIR
log_var DIR $DIR_OS
log_var DIR $DIR_BIN

cp $DIR/$DIR_OS/*.sh .$DIR_BIN

log_exit $DIR$CMD_INIT
