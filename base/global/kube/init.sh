#!/bin/bash
# shellcheck disable=SC2086


log_enter $GLBL_DIR/kube/init

cp .$GLBL_DIR/kube/linux/*.sh ./bin

log_exit $GLBL_DIR/kube/init