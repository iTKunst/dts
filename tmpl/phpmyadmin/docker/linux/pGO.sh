#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_load pGO

source project/pENV.sh

CONT=$PROJ_CONT
CONT_DIR=$PROJ_CONT_DIR
HOST=$PROJ_HOST
HOST_DIR=$(pwd)$PROJ_HOST_DIR
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

DB_HOST=$PROJ_DB_HOST
DB_PORT=$PROJ_DB_PORT

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

log_var DB_HOST $DB_HOST
log_var DB_PORT $DB_PORT

docker run \
       -$MODE \
       -p $HOST:$PORT_EXT:$PORT_INT \
       -e PMA_HOST=$DB_HOST \
       -e PMA_PORT=$DB_PORT \
       -e PMA_ARBITRARY=1 \
       --label=$LABEL \
       --name=$CONT \
       --network=$NET \
       $IMG

log_unload pGO
