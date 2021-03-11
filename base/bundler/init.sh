#!/bin/bash
# shellcheck disable=SC2086

export DIR=$DIR_DTS$DIR_BASE$DIR_BUNDLER

log_enter $DIR$CMD_INIT

log_var DIR $DIR

source $DIR/env$CMD_INIT
source $DIR/git$CMD_INIT
source $DIR/log$CMD_INIT
source $DIR/misc$CMD_INIT

log_exit $DIR$CMD_INIT

