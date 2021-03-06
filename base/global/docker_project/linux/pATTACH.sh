#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_enter pATTACH

source pENV.sh

CONT=$PROJ_CONT
log_var CONT $CONT
if ! docker exec -it $CONT /bin/bash; then
  docker exec -it $CONT /bin/sh
fi

log_exit pATTACH
