#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_DTS$DIR_BASE$DIR_GLOBAL$CMD_INIT

source $DIR_DTS$DIR_BASE$DIR_GLOBAL/docker_compose/init.sh
source $DIR_DTS$DIR_BASE$DIR_GLOBAL/docker_global/init.sh
source $DIR_DTS$DIR_BASE$DIR_GLOBAL/docker_project/init.sh
source $DIR_DTS$DIR_BASE$DIR_GLOBAL/docker_system/init.sh
source $DIR_DTS$DIR_BASE$DIR_GLOBAL/env/init.sh
source $DIR_DTS$DIR_BASE$DIR_GLOBAL/git/init.sh
source $DIR_DTS$DIR_BASE$DIR_GLOBAL/kube/init.sh
source $DIR_DTS$DIR_BASE$DIR_GLOBAL$GLBL_DIR/openshift/init.sh

log_exit $DIR_DTS$DIR_BASE$DIR_GLOBAL$CMD_INIT