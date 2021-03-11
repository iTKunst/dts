#!/bin/bash
# shellcheck disable=SC2086

DIR=$DIR_DTS$DIR_BASE$DIR_BUNDLER/$DIR_LOG

log_enter $DIR$CMD_INIT

cp $DIR/linux/*.sh ./bin

log_exit $DIR$CMD_INIT
