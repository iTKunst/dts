#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh

log_load pVIEW

source pENV.sh

NET=$PROJ_NET

log_var NET $NET

docker network ls -f "name=$NET"

log_unload pVIEW
