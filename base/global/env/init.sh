#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_GLBL$ENV_DIR$CMD_INIT

cp $DIR_GLBL$ENV_DIR$OS_DIR/*.sh ./bin

log_exit $DIR_GLBL$ENV_DIR$CMD_INIT
