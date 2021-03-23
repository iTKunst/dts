#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_load pKILL

source tENV.sh

NET=$PROJ_NET
log_var NET $NET
docker network rm $NET

log_unload pKILL