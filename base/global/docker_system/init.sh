#!/bin/bash
# shellcheck disable=SC2086


log_enter $GLBL_DIR/docker_system/init

cp $GLBL_DIR/docker_system/linux/*.sh ./bin

log_exit $GLBL_DIR/docker_system/init
