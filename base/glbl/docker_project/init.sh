#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_GLBL/docker_project$CMD_INIT

cp $DIR_GLBL/docker_project$OS_DIR/*.sh $DIR_BIN

log_exit $DIR_GLBL/docker_project$CMD_INIT
