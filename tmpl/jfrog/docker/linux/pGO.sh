#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_load pGO

source $TMPL_ENV

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

PORT_ADMIN_EXT=$PROJ_PORT_ADMIN_EXT
PORT_ADMIN_INT=$PROJ_PORT_ADMIN_INT
PORT_DBG_EXT=$PROJ_PORT_DBG_EXT
PORT_DBG_INT=$PROJ_PORT_DBG_INT
REG_VIRT=$PROJ_REG_VIRT
REG_DEV=$PROJ_REG_DEV
REG_PROD=$PROJ_REG_PROD
REG_REM=$PROJ_REG_REM

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

log_var PORT_ADMIN_EXT $PORT_ADMIN_EXT
log_var PORT_ADMIN_INT $PORT_ADMIN_INT
log_var PORT_DBG_EXT $PORT_DBG_EXT
log_var PORT_DBG_INT $PORT_DBG_INT
log_var REG_VIRT $REG_VIRT
log_var REG_DEV $REG_DEV
log_var REG_PROD $REG_PROD
log_var REG_REM $REG_REM

docker run \
       -$MODE \
       -p $HOST:$PORT_EXT:$PORT_INT \
       -p $HOST:$PORT_ADMIN_EXT:$PORT_ADMIN_INT \
       -p $HOST:$PORT_DBG_EXT:$PORT_DBG_INT \
       -v $VOL:$CONT_DIR:rw \
       -w $CONT_DIR \
       -e insecure-registry=$REG_VIRT \
       -e insecure-registry=$REG_DEV \
       -e insecure-registry=$REG_PROD \
       -e insecure-registry=$REG_REM \
       --label=$LABEL \
       --name=$CONT \
       --network=$NET \
       $IMG

log_unload pGO
