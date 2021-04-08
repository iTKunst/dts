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
log_var CONT $CONT
CONT_DIR=$PROJ_CONT_DIR
log_var CONT_DIR $CONT_DIR
CONT_MNT_DIR=$PROJ_CONT_MNT_DIR
log_var CONT_MNT_DIR $CONT_MNT_DIR
HOST=$PROJ_HOST
log_var HOST $HOST
HOST_DIR=$PWD$PROJ_HOST_DIR
log_var HOST_DIR $HOST_DIR
HOST_MNT_DIR=$PWD$PROJ_HOST_MNT_DIR
log_var HOST_MNT_DIR $HOST_MNT_DIR
IMG=$PROJ_IMG
log_var IMG $IMG
LABEL=$PROJ_LABEL
log_var LABEL $LABEL
MODE=$PROJ_MODE
log_var MODE $MODE
NET=$PROJ_NET
log_var NET $NET
PASSWORD=$PROJ_PASSWORD
log_var PASSWORD $PASSWORD
PORT_EXT=$PROJ_PORT_EXT
log_var PORT_EXT $PORT_EXT
PORT_INT=$PROJ_PORT_INT
log_var PORT_INT $PORT_INT
USER=$PROJ_USER
log_var USER $USER
VOL=$PROJ_VOL
log_var VOL $VOL


FILE=$PROJ_FILE
log_var FILE $FILE



mkdir -p $HOST_MNT_DIR

docker run \
       -$MODE \
       --label=$LABEL \
       --mount type=bind,src=$HOST_MNT_DIR,target=$CONT_MNT_DIR \
       --name=$CONT \
       $IMG \
       generate \
       -i $FILE \
       -l spring \
       -o /$CONT_MNT_DIR

source pINSTALL.sh
source pKILL.sh

log_unload pGO


echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%                                                                %%%%%%%%%%%%"
echo "%%%%%%%%%                 Docker Templating System (DTS)                     %%%%%%%%%%"
echo "%%%%%%%%%                           pGO [EXIT]                               %%%%%%%%%%"
echo "%%%%%%%%%%%                                                                %%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
