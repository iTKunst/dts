#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh


log_enter pVIEW

source tENV.sh

CONT=$PROJ_CONT
IMG=$PROJ_IMG

log_var CONT $CONT
log_var IMG $IMG

docker images $IMG
docker ps -f name=$CONT

log_exit pVIEW

