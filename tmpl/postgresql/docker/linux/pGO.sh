#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh


log_load pGO

source $TMPL_ENV_FILE_FILE

CONT=$PROJ_CONT
CONT_DIR=$PROJ_CONT_DIR
CONT_MNT_DIR=$PROJ_CONT_MNT_DIR
HOST=$PROJ_HOST
HOST_DIR=$(pwd)$PROJ_HOST_DIR
HOST_MNT_DIR=$(pwd)$PROJ_HOST_MNT_DIR
IMG=$PROJ_IMG
LABEL=$PROJ_LABEL
MODE=$PROJ_MODE
NET=$PROJ_NET
PASSWORD=$PROJ_PASSWORD
PORT_EXT=$PROJ_PORT_EXT
PORT_INT=$PROJ_PORT_INT
USER=$PROJ_USER
VOL=$PROJ_VOL

DB_NAME=$PROJ_DB_NAME

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
log_var VOL $VOL

log_var DB_NAME $DB_NAME

docker run \
       -$MODE \
       -p $HOST:$PORT_EXT:$PORT_INT \
       -e POSTGRES_DB=$DB_NAME \
       -e POSTGRES_USER=$USER \
       -e POSTGRES_PASSWORD=$PASSWORD \
       --label=$LABEL \
       --mount type=volume,src=$VOL,dst=$CONT_MNT_DIR \
       --name=$CONT \
       --network=$NET \
       $IMG

log_unload pGO
