#!/bin/bash
# shellcheck disable=SC2086
# echo pBUILD.sh [LOAD]
source settings.sh
source bLOG.sh


log_enter pPUSH


source pTAG.sh
source tENV.sh

IMG=$PROJ_IMG
REPO=$DCKR_REPO_HST
TAG=1

log_var IMG $IMG
log_var REPO $REPO
log_var TAG $TAG

NAME=$REPO/$IMG:$TAG
log_var NAME $NAME

docker push $NAME


log_exit pPUSH
