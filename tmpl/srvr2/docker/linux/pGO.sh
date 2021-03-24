#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_load pGO

source $TMPL_ENV_FILE_FILE

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

ART=$PROJ_ART
GRP=$PROJ_GRP
REPO_URL=$PROJ_REPO_URL
REPO_PORT=$PROJ_REPO_PORT
VER=$PROJ_VER

DB_ADDR=$PROJ_DB_ADDR
DB_DATABASE=$PROJ_DB_DATABASE
DB_PASSWORD=$PROJ_DB_PASSWORD
DB_USER=$PROJ_DB_USER
DB_VENDOR=$PROJ_DB_VENDOR
DBG=$PROJ_DBG
DBG_PORT=$PROJ_DBG_PORT

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
log_var GRP $GRP
log_var REPO_URL $REPO_URL
log_var REPO_PORT $REPO_PORT
log_var VER $VER

log_var DB_ADDR $DB_ADDR
log_var DB_DATABASE $DB_DATABASE
log_var DB_PASSWORD $DB_PASSWORD
log_var DB_USER $DB_USER
log_var DB_VENDOR $DB_VENDOR
log_var DBG $DBG

mkdir -p $HOST_MNT_DIR

docker run \
       -$MODE \
       -p $HOST:$PORT_EXT:$PORT_INT \
       -e ART=$ART \
       -e GRP=$GRP \
       -e REPO_URL=$REPO_URL \
       -e REPO_PORT=$REPO_PORT \
       -e VER=$VER \
       -e DB_ADDR=$DB_ADDR \
       -e DB_DATABASE=$DB_DATABASE \
       -e DB_PASSWORD=$DB_PASSWORD \
       -e DB_USER=$DB_USER \
       -e DB_VENDOR=$DB_VENDOR \
       --label=$LABEL \
       --name=$CONT \
       --network=$NET \
       $IMG

log_unload pGO

#       --mount type=bind,src=$HOST_MNT_DIR,target=$CONT_MNT_DIR \
