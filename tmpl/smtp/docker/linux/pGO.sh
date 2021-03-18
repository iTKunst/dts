#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_load pGO

source project/pENV.sh

CONT=$PROJ_CONT
CONT_DIR=$PROJ_CONT_DIR
CONT_MNT_DIR=$PROJ_CONT_MNT_DIR
HOST=$PROJ_HOST
HOST_DIR=$(pwd)$PROJ_HOST_DIR
HOST_MNT_DIR=$(pwd)$PROJ_HOST_MNT_DIR
IMG=$PROJ_IMG
IP=$PROJ_IP
LABEL=$PROJ_LABEL
MODE=$PROJ_MODE
NET=$PROJ_NET
PASSWORD=$PROJ_PASSWORD
PORT_EXT=$PROJ_PORT_EXT
PORT_INT=$PROJ_PORT_INT
USER=$PROJ_USER
VOL=$PROJ_VOL

ALIASES=$PROJ_ALIASES

log_var CONT $CONT
log_var CONT_DIR $CONT_DIR
log_var CONT_MNT_DIR $CONT_MNT_DIR
log_var HOST $HOST
log_var HOST_DIR $HOST_DIR
log_var HOST_MNT_DIR $HOST_MNT_DIR
log_var IMG $IMG
log_var IP $IP
log_var LABEL $LABEL
log_var MODE $MODE
log_var NET $NET
log_var PASSWORD $PASSWORD
log_var PORT_EXT $PORT_EXT
log_var PORT_INT $PORT_INT
log_var USER $USER
log_var VOL $VOL

log_var ALIASES $ALIASES

mkdir -p $HOST_MNT_DIR

docker run \
       -$MODE \
       -p $HOST:$PORT_EXT:$PORT_INT \
       -e SMARTHOST_ADDRESS=$HOST \
       -e SMARTHOST_ALIASES=$ALIASES \
       -e SMARTHOST_PORT=$PORT_INT \
       -e SMARTHOST_PASSWORD=$PASSWORD \
       -e SMARTHOST_USER=$USER \
       --add-host=$HOST:$IP \
       --label=$LABEL \
       --mount type=bind,source=$HOST_MNT_DIR,target=$CONT_MNT_DIR \
       --name=$CONT \
       --network=$NET \
       $IMG

log_unload pGO