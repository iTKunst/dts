#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh


log_enter pSTOP


source tENV.sh

CONT=$PROJ_CONT
log_var CONT $CONT

docker stop $CONT


log_exit pSTOP

