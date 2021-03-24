#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh


log_enter pATTACH

source $TMPL_ENV_FILE_FILE

CONT=$PROJ_CONT
log_var CONT $CONT
if ! docker exec -it $CONT /bin/bash; then
  docker exec -it $CONT /bin/sh
fi

log_exit pATTACH
