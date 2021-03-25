#!/bin/bash
# shellcheck disable=SC2086
# echo pBUILD.sh [LOAD]

echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%                                                                %%%%%%%%%%%%"
echo "%%%%%%%%%                 Docker Templating System (DTS)                     %%%%%%%%%%"
echo "%%%%%%%%%                           pBUILD [ENTER]                           %%%%%%%%%%"
echo "%%%%%%%%%%%                                                                %%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"


source settings.sh
source bLOG.sh
source tENV.sh


log_enter pBUILD


source pSTOP.sh

CONT_DIR=$PROJ_CONT_DIR
HOST_DIR=$PROJ_HOST_DIR
IMG=$PROJ_IMG
USER=$PROJ_USER

ART=$PROJ_ART
FILE=$PROJ_FILE
GRP=$PROJ_GRP
REPO_HOST=$PROJ_REPO_HOST
REPO_IP=$PROJ_REPO_IP
REPO_PORT_EXT=$PROJ_REPO_PORT_EXT
VER=$PROJ_VER



log_var CONT_DIR $CONT_DIR
log_var BUILD_DCKR $BUILD_DCKR
log_var SYS $SYS
log_var TMPL $TMPL
log_var HOST_DIR $HOST_DIR
log_var IMG $IMG
log_var TMPL_NAME $TMPL_NAME
log_var USER $USER

log_var ART $ART
log_var DIR_CERT $DIR_CERT
log_var FILE $FILE
log_var GRP $GRP
log_var REPO_HOST $REPO_HOST
log_var REPO_IP $REPO_IP
log_var REPO_PORT_EXT $REPO_PORT_EXT
log_var VER $VER


DOCKER_BUILDKIT=1 \
          docker  \
          build \
          --no-cache \
          --build-arg CONT_DIR=$CONT_DIR \
          --build-arg HOST_DIR=$HOST_DIR \
          --build-arg SYS_DIR=$SYS \
          --build-arg TMPL_DIR=$TMPL \
          --build-arg ART=$ART \
          --build-arg CERT_DIR=$DIR_CERT \
          --build-arg FILE=$FILE \
          --build-arg GRP=$GRP \
          --build-arg REPO_HOST=$REPO_HOST \
          --build-arg REPO_PORT_EXT=$REPO_PORT_EXT \
          --build-arg VER=$VER \
          --add-host=$REPO_HOST:$REPO_IP \
          -f $BUILD_DCKR \
          -t $IMG \
          .

log_var RES $?
if [ $? -ne 0 ]; then
  log_err Unable to build image
else
  log_cmd Please run pGO to create and run the container
fi

log_exit pBUILD

echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%                                                                %%%%%%%%%%%%"
echo "%%%%%%%%%                 Docker Templating System (DTS)                     %%%%%%%%%%"
echo "%%%%%%%%%                           pBUILD [EXIT]                            %%%%%%%%%%"
echo "%%%%%%%%%%%                                                                %%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

# echo pBUILD.sh [UNLOAD]
