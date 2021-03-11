#!/bin/bash
# shellcheck disable=SC2086

export DIR=$DIR_DTS$DIR_BASE$DIR_BUNDLER

log_enter $DIR$CMD_INIT


source $DIR/env/init.sh
source $DIR/git/init.sh
source $DIR/log/init.sh
source $DIR/misc/init.sh

log_exit $DIR$CMD_INIT

