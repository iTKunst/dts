#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh

log_load pVIEW

source $TMPL_ENV_FILE_FILE

NET=$PROJ_NET

log_var NET $NET

docker network ls -f "name=$NET"

log_unload pVIEW
