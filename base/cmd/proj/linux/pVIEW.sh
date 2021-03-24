#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_enter pVIEW

source $TMPL_ENV_FILE_FILE

CONT=$PROJ_CONT
IMG=$PROJ_IMG

log_var CONT $CONT
log_var IMG $IMG

docker images $IMG
docker ps -f name=$CONT

log_exit pVIEW

