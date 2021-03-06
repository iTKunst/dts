#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh


log_load pGO

source tENV.sh

CONT=$PROJ_CONT
CONT_DIR=$PROJ_CONT_DIR
HOST=$PROJ_HOST
HOST_DIR=$PROJ_HOST_DIR
IMG=$PROJ_IMG
LABEL=$PROJ_LABEL
MODE=$PROJ_MODE
NET=$PROJ_NET
PASSWORD=$PROJ_PASSWORD
PORT_EXT=$PROJ_PORT_EXT
PORT_INT=$PROJ_PORT_INT
USER=$PROJ_USER
VOL=$PROJ_VOL
VOL_DIR=$PROJ_VOL_DIR

CONT_GRP_DIR=$PROJ_CONT_GRP_DIR
DOMAIN=$PROJ_DOMAIN
HOST_GRP_DIR=$PROJ_HOST_GRP_DIR
SYSCTL=$PROJ_SYSCTL

log_var CONT $CONT
log_var CONT_DIR $CONT_DIR
log_var HOST $HOST
log_var HOST_DIR $HOST_DIR
log_var IMG $IMG
log_var LABEL $LABEL
log_var MODE $MODE
log_var NET $NET
log_var PASSWORD $PASSWORD
log_var PORT_EXT $PORT_EXT
log_var PORT_INT $PORT_INT
log_var USER $USER
log_var VOL $VOL
log_var VOL_DIR $VOL_DIR

log_var CONT_GRP_DIR $CONT_GRP_DIR
log_var DOMAIN $DOMAIN
log_var HOST_GRP_DIR $HOST_GRP_DIR
log_var SYSCTL $SYSCTL

docker run \
       -$MODE \
       -h $DOMAIN \
       -p $HOST:$PORT_EXT:$PORT_INT \
       -v $HOST_GRP_DIR:$CONT_GRP_DIR:ro \
       --mount source=$HOST_DIR,target=$CONT_DIR \
       --label=$LABEL \
       --name=$CONT \
       --network=$NET \
       --sysctl $SYSCTL \
       $IMG


log_unload pGO

