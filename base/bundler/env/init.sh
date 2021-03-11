#!/bin/bash
# shellcheck disable=SC2086

DIR=$DIR_DTS$DIR_BASE$DIR_BUNDLER$DIR_ENV

log_enter $DIR$CMD_INIT

cp $DIR/$DIR_OS/*.sh $DIR_BIN

log_exit $DIR$CMD_INIT
