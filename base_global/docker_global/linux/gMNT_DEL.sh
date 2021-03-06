#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_enter gMNT_DEL

log_warn "!!!!!!Warning!!!!!"
log_warn "Deletes all persisted data in volumes!"
docker volume prune

log_exit gMNT_DEL
