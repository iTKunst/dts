#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_GLBL$CMD_INIT

source $DIR_GLBL/docker_compose$CMD_INIT
source $DIR_GLBL/docker_global$CMD_INIT
source $DIR_GLBL/docker_project$CMD_INIT
source $DIR_GLBL/docker_system$CMD_INIT
source $DIR_GLBL$ENV_DIR$CMD_INIT
source $DIR_GLBL$GIT_DIR$CMD_INIT
source $DIR_GLBL/kube$CMD_INITv
source $DIR_GLBL/openshift$CMD_INIT

log_exit $DIR_GLBL$CMD_INIT