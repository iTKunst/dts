#!/bin/bash
# shellcheck disable=SC2086


log_enter $GLBL_DIR/init

source .$GLBL_DIR/docker_compose/init.sh
source .$GLBL_DIR/docker_global/init.sh
source .$GLBL_DIR/docker_project/init.sh
source .$GLBL_DIR/docker_system/init.sh
source .$GLBL_DIR/env/init.sh
source .$GLBL_DIR/git/init.sh
source .$GLBL_DIR/kube/init.sh
source .$GLBL_DIR/openshift/init.sh

log_exit $GLBL_DIR/init