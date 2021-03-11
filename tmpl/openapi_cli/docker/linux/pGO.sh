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

API_HOST=$PROJ_APPI_HOST

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

log_var API_HOST $API_HOST
log_var SYS_DIR $DIR_DIR
log_var API_NAME $API_NAME

docker 	run --rm \
  			-v ${PWD}:/local \
  			-i /$DIR_DIR/$API_NAME \
  			-g spring \
  			-o /local/out/spring

log_unload pGO
