#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_load pGO

source $TMPL_ENV

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

CONT_PATH=$PROJ_CONT_PATH
MAX_HEAP=$PROJ_MAX_HEAP
MIN_HEAP=$PROJ_MIN_HEAP
JAVA_OPTS=${PROJ_JAVA_OPTS}
LAUNCH_CONF=$PROJ_LAUNCH_CONF

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

log_var CONT_PATH $CONT_PATH
log_var MAX_HEAP $MAX_HEAP
log_var MIN_HEAP $MIN_HEAP
log_var JAVA_OPTS ${JAVA_OPTS}
log_var LAUNCH_CONF $LAUNCH_CONF

mkdir -p $HOST_MNT_DIR

docker run \
       -$MODE \
       -p $HOST:$PORT_EXT:$PORT_INT \
       --label=$LABEL \
       --mount type=bind,src=$HOST_MNT_DIR,target=$CONT_MNT_DIR \
       --name=$CONT \
       --network=$NET \
       $IMG

log_unload pGO
