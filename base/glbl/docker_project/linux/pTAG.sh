#!/bin/bash
# shellcheck disable=SC2086
# echo pBUILD.sh [LOAD]
source settings.sh
source LOG.sh


log_enter pTAG

source $TMPL_ENV_FILE_FILE

IMG=$PROJ_IMG
REPO=$DCKR_REPO_HST
TAG=$DCKR_TAG

log_var IMG $IMG
log_var REPO $REPO
log_var TAG $TAG

NAME=$REPO/$IMG:$TAG
log_var NAME $NAME

docker tag $IMG $NAME


log_exit pTAG
