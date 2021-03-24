#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_enter sINSPECT

source $TMPL_ENV_FILE_FILE

log_var DB_VOL $DB_VOL
log_var DB_MS_VOL $DB_MS_VOL
log_var WF_VOL $WF_VOL

log_info "Inspecting Volume $DB_VOL"
docker volume inspect $DB_VOL
log_info ""

log_info "Inspecting Volume $DB_MS_VOL"
docker volume inspect $DB_MS_VOL
log_info ""

log_info "Inspecting Volume $WF_VOL"
docker volume inspect $WF_VOL
log_info ""

log_exit sINSPECT
