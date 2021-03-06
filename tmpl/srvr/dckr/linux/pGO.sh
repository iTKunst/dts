#!/bin/bash
# shellcheck disable=SC2086

echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%                                                                %%%%%%%%%%%%"
echo "%%%%%%%%%                 Docker Templating System (DTS)                     %%%%%%%%%%"
echo "%%%%%%%%%                           pGO [ENTER]                              %%%%%%%%%%"
echo "%%%%%%%%%%%                                                                %%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"


source settings.sh
source bLOG.sh


log_load pGO

source tENV.sh

CONT=$PROJ_CONT
CONT_DIR=$PROJ_CONT_DIR
CONT_MNT_DIR=$PROJ_CONT_MNT_DIR
HOST=$PROJ_HOST
HOST_DIR=$PWD$PROJ_HOST_DIR
HOST_MNT_DIR=$PWD$PROJ_HOST_MNT_DIR
IMG=$PROJ_IMG
LABEL=$PROJ_LABEL
MODE=$PROJ_MODE
NET=$PROJ_NET
PASSWORD=$PROJ_PASSWORD
PORT_EXT=$PROJ_PORT_EXT
PORT_INT=$PROJ_PORT_INT
USER=$PROJ_USER
VOL=$PROJ_VOL

REPO_HOST=$PROJ_REPO_HOST
REPO_IP=$PROJ_REPO_IP
REPO_PORT_EXT=$PROJ_REPO_PORT_EXT
VER=$PROJ_VER

DB_ADDR=$PROJ_DB_ADDR
DB_DATABASE=$PROJ_DB_DATABASE
DB_PASSWORD=$PROJ_DB_PASSWORD
DB_USER=$PROJ_DB_USER
DB_VENDOR=$PROJ_DB_VENDOR
DBG=$PROJ_DBG
DBG_PORT=$PROJ_DBG_PORT
IMPORT=$PROJ_IMPORT
LOG_LEVEL=$PROJ_LOG_LEVEL
PORT_EXT_ADMIN=$PROJ_PORT_EXT_ADMIN
PORT_INT_ADMIN=$PROJ_PORT_INT_ADMIN
PROXY_FORWARD=$PROJ_PROXY_FORWARD
ROOT_LOG_LEVEL=$PROJ_ROOT_LOG_LEVEL

log_var CONT $CONT
log_var CONT_DIR $CONT_DIR
log_var CONT_MNT_DIR $CONT_MNT_DIR
log_var HOST $HOST
log_var HOST_DIR $HOST_DIR
log_var HOST_MNT_DIR $HOST_MNT_DIR
log_var IMG $IMG
log_var LABEL $LABEL
log_var MODE $MODE
log_var NET $NET
log_var PASSWORD $PASSWORD
log_var PORT_EXT $PORT_EXT
log_var PORT_INT $PORT_INT
log_var USER $USER

log_var ART $ART
log_var FILE $FILE
log_var GRP $GRP
log_var PKG $PKG
log_var REPO_HOST $REPO_HOST
log_var REPO_IP $REPO_IP
log_var REPO_PORT_EXT $REPO_PORT_EXT
log_var VER $VER

mkdir -p $HOST_MNT_DIR

docker run \
       -$MODE \
       -e ART=$ART \
       -e FILE=$FILE \
       -e GRP=$GRP \
       -e PKG=$PKG \
       -e REPO_HOST=$REPO_HOST \
       -e REPO_PORT_EXT=$REPO_PORT_EXT \
       -e VER=$VER \
       --add-host=$REPO_HOST:$REPO_IP \
       --label=$LABEL \
       --mount type=bind,src=$HOST_MNT_DIR,target=$CONT_MNT_DIR \
       --name=$CONT \
       --network=$NET \
       $IMG

log_unload pGO


echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%                                                                %%%%%%%%%%%%"
echo "%%%%%%%%%                 Docker Templating System (DTS)                     %%%%%%%%%%"
echo "%%%%%%%%%                           pGO [EXIT]                               %%%%%%%%%%"
echo "%%%%%%%%%%%                                                                %%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
