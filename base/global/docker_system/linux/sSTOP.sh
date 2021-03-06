#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_enter sSTOP

source pENV.sh
LABEL=$PROJ_LABEL
CONT_FILTER="label=$LABEL"
log_var CONT_FILTER $CONT_FILTER
log_var LABEL $LABEL
CONTAINERS=$(docker container ls -q --filter ${CONT_FILTER})
log_var  CONTAINERS $CONTAINERS
docker container stop $CONTAINERS

log_exit sSTOP
