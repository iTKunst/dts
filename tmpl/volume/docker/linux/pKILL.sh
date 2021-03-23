#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_load pKILL

source tENV.sh

CONT=$PROJ_CONT

log_var CONT $CONT
docker volume rm $CONT

log_unload pKILL