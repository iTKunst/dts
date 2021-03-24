#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh

log_load pVIEW

source tENV.sh

CONT=$PROJ_CONT

log_var CONT $CONT

docker volume ls -f "name=$CONT"

log_unload pVIEW
