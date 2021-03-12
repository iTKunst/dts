#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_enter pDEL_CONT


source project/pENV.sh

CONT=$PROJ_CONT
log_var CONT $CONT

docker rm $CONT


log_exit pDEL_CONT
