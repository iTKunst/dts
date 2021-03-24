#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh


log_enter sDEL_NET


source tENV.sh

FILTER="label=$SYS_NAME"

log_var FILTER $FILTER
log_var SYS_NAME $SYS_NAME

ARTIFACTS=$( docker network ls -q -f ${FILTER} )

log_var ARTIFACTS $ARTIFACTS
if [ ! "$ARTIFACTS" == '' ]; then
  log_warn "removing networks"
  docker network rm $ARTIFACTS
fi


log_exit sDEL_NET


