#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_GLBL/kube$CMD_INIT

cp $DIR_GLBL/kube$FILES $DIR_BIN

log_exit $DIR_GLBL/kube$CMD_INIT