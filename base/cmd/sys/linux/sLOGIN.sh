#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_enter sLOGIN


source $FILE_SYS_ENV

REPO_GRP=$DCKR_REPO_GRP
REPO_HST=$DCKR_REPO_HST
USER=$NXS_USR
PASS=$NXS_PWD

log_var REPO_GRP $REPO_GRP
log_var REPO_HST $REPO_HST
log_var USER $USER
log_var PASS $PASS

echo $PASS>pass.txt

cat pass.txt | docker login -u $USER --password-stdin $REPO_GRP
cat pass.txt | docker login -u $USER --password-stdin $REPO_HST

log_cmd Please run sRELOAD.sh to setup your docker repos and reload the docker daemon


log_exit sLOGIN

