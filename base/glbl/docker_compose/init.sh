#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_GLBL/docker_compose$CMD_INIT

cp $DIR_GLBL/docker_compose$FILES $DIR_BIN

log_exit $DIR_GLBL/docker_compose$CMD_INIT