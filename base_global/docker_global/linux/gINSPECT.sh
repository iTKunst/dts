#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_enter gINSPECT

source ENV.sh

VOL_FILTER="label=$APP"

log_var DB_VOL $DB_VOL
log_var DB_MS_VOL $DB_MS_VOL
log_var WF_VOL $WF_VOL
log_var VOL_FILTER $VOL_FILTER

docker volume ls --filter $VOL_FILTER
echo

docker volume inspect $DB_VOL
echo

docker volume inspect $DB_MS_VOL
echo

docker volume inspect $WF_VOL
echo


log_exit gINSPECT

