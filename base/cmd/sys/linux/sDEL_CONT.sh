#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh


log_enter sDEL_CONT


source tENV.sh

FILTER="label=$SYS_NAME"

log_var FILTER $FILTER
log_var SYS_NAME $SYS_NAME

ARTIFACTS=$( docker ps -a -f ${FILTER} -f status=exited -q )

log_var ARTIFACTS $ARTIFACTS
if [ ! "$ARTIFACTS" == '' ]; then
  log_warn "removing containers"
  docker rm -f $ARTIFACTS
fi


log_exit sDEL_CONT


