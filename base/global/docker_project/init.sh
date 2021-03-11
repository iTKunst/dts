#!/bin/bash
# shellcheck disable=SC2086


log_enter $GLBL_DIR/docker_project/init

cp $GLBL_DIR/docker_project/linux/*.sh ./bin

log_exit $GLBL_DIR/docker_project/init
