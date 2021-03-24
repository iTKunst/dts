#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh


log_load pKILL

source $TMPL_ENV_FILE_FILE

NET=$PROJ_NET
log_var NET $NET
docker network rm $NET

log_unload pKILL