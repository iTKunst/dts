#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_GLBL/docker_global$CMD_INIT

cp $DIR_GLBL/docker_global$OS_DIR/*.sh ./bin

log_exit $DIR_GLBL/docker_global$CMD_INIT
