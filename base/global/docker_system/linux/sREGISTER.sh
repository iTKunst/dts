#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_enter sREGISTER


source sENV.sh

REPO_GRP=$DCKR_REPO_GRP
REPO_HST=$DCKR_REPO_HST

log_var REPO_GRP $REPO_GRP
log_var REPO_HST $REPO_HST

MIRRORS=" \"registry-mirrors\": [ \"https://$REPO_GRP\" ] "
INSECURE=" \"insecure-registries\": [ \"https://$REPO_GRP\", \"https://$REPO_HST\" ] "
DBG=" \"debug\": true "
EXP=" \"experimental\": false "

echo "{ $MIRRORS, $INSECURE, $DBG, $EXP }" > daemon.json

log_cmd "Place daemon.json in /etc/docker and restart docker"


log_exit sREGISTER

