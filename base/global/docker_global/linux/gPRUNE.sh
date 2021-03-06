#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_enter gPRUNE

docker $DIR_SYS prune

log_exit gPRUNE
