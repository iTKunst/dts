#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_GLBL$DIR_SLASH$FILE_INIT

source $DIR_GLBL/docker_compose$DIR_SLASH$FILE_INIT
source $DIR_GLBL/docker_global$DIR_SLASH$FILE_INIT
source $DIR_GLBL/docker_project$DIR_SLASH$FILE_INIT
source $DIR_GLBL/docker_system$DIR_SLASH$FILE_INIT
source $DIR_GLBL$ENV_DIR$DIR_SLASH$FILE_INIT
source $DIR_GLBL$GIT_DIR$DIR_SLASH$FILE_INIT
source $DIR_GLBL/kube$DIR_SLASH$FILE_INIT
source $DIR_GLBL/openshift$DIR_SLASH$FILE_INIT

log_exit $DIR_GLBL$DIR_SLASH$FILE_INIT