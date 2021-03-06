#!/bin/bash
# shellcheck disable=SC2086


log_enter /$DIR_GLBL/init

source ./$DIR_GLBL/docker_compose/init.sh
source ./$DIR_GLBL/docker_$DIR_GLBL/init.sh
source ./$DIR_GLBL/docker_project/init.sh
source ./$DIR_GLBL/docker_system/init.sh
source ./$DIR_GLBL/env/init.sh
source ./$DIR_GLBL/git/init.sh
source ./$DIR_GLBL/kube/init.sh
source ./$DIR_GLBL/openshift/init.sh

log_exit /$DIR_GLBL/init