#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_GLBL/openshift$CMD_INIT

cp $DIR_GLBL/openshift$OS_DIR/*.sh $DIR_BIN

log_exit $DIR_GLBL/openshift$CMD_INIT
