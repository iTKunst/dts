#!/bin/bash
# shellcheck disable=SC2086

DIR=$DIR_DTS$DIR_BASE

log_enter $DIR$CMD_INIT

source $DIR$DIR_BUNDLER$CMD_INIT
#source $DIR$DIR_GLOBAL$CMD_INIT
#source $DIR$DIR_TEMPLATE$CMD_INIT
#source $DIR$DIR_PROJECT$CMD_INIT

log_exit $DIR$CMD_INIT

