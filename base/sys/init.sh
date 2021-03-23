#!/bin/bash
# shellcheck disable=SC2086

UP=$DOT$DOT$DIR_SLASH
DIR=$UP$UP"system"
CMD=$DIR$FILE_INIT


log_enter $CMD

source $DIR$ENV_DIR$FILE_INIT

log_exit $CMD
