#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_enter sDEL_IMG


source $TMPL_ENV
FILTER="reference=$SYS_NAME*"
log_var FILTER $FILTER
log_var SYS_NAME $SYS_NAME

ARTIFACTS=$( docker image ls -q -f ${FILTER} )

log_var ARTIFACTS $ARTIFACTS
if [ ! "$ARTIFACTS" == '' ]; then
  log_warn "removing images"
  docker image rm -f $ARTIFACTS
fi


log_exit sDEL_IMG


