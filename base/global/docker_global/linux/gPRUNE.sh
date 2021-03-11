#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_enter gPRUNE

docker $SYS_DIR prune

log_exit gPRUNE
