#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh


log_enter pSTART


source tENV.sh

CONT=$PROJ_CONT
log_var CONT $CONT

docker container start $CONT


log_exit pSTOP

