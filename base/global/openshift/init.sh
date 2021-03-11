#!/bin/bash
# shellcheck disable=SC2086


log_enter $GLBL_DIR/openshift/init

cp $GLBL_DIR/openshift/linux/*.sh ./bin

log_exit $GLBL_DIR/openshift/init
