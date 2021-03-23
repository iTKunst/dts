#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_GLBL$FILE_INIT

source $DIR_GLBL/docker_compose$FILE_INIT
source $DIR_GLBL/docker_global$FILE_INIT
source $DIR_GLBL/docker_project$FILE_INIT
source $DIR_GLBL/docker_system$FILE_INIT
#source $DIR_GLBL"/git"$FILE_INIT
source $DIR_GLBL/kube$FILE_INIT
source $DIR_GLBL/openshift$FILE_INIT

log_exit $DIR_GLBL$FILE_INIT

