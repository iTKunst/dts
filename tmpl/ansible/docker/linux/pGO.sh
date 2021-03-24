#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh


log_load pGO

source tENV.sh

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

DB_ADDR=$PROJ_DB_ADDR
DB_DATABASE=$PROJ_DB_DATABASE
DB_PASSWORD=$PROJ_DB_PASSWORD
DB_USER=$PROJ_DB_USER
DB_VENDOR=$PROJ_DB_VENDOR
IMPORT=$PROJ_IMPORT
PORT_EXT_ADMIN=$PROJ_PORT_EXT_ADMIN
PORT_INT_ADMIN=$PROJ_PORT_INT_ADMIN

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

log_var DB_ADDR $DB_ADDR
log_var DB_DATABASE $DB_DATABASE
log_var DB_PASSWORD $DB_PASSWORD
log_var DB_USER $DB_USER
log_var DB_VENDOR $DB_VENDOR
log_var PORT_EXT_ADMIN $PORT_EXT_ADMIN
log_var PORT_INT_ADMIN $PORT_INT_ADMIN

docker run \
       -$MODE \
       --label=$LABEL \
       --name=$CONT \
       --network=$NET \
       $IMG

log_unload pGO