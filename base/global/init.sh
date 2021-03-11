#!/bin/bash
# shellcheck disable=SC2086


log_enter $GLBL_DIR$CMD_INIT

source $GLBL_DIR/docker_compose$CMD_INIT
source $GLBL_DIR/docker_global$CMD_INIT
source $GLBL_DIR/docker_project$CMD_INIT
source $GLBL_DIR/docker_system$CMD_INIT
source $GLBL_DIR/env$CMD_INIT
source $GLBL_DIR/git$CMD_INIT
source $GLBL_DIR/kube$CMD_INITv
source $GLBL_DIR/openshift$CMD_INIT

log_exit $GLBL_DIR$CMD_INIT