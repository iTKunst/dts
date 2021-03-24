#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_enter pSTOP


source $TMPL_ENV_FILE_FILE

CONT=$PROJ_CONT
log_var CONT $CONT

docker stop $CONT


log_exit pSTOP

