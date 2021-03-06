#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV

source sENV.sh
if [ -f "project/pENV_MOD.sh" ]; then
  source project/pENV_MOD.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$STASHY_CONT
export PROJ_CONT_DATA_DIR=$STASHY_DATA_DIR
export PROJ_CONT_DIR=$STASHY_CONT_DIR
export PROJ_CONT_HOME_DIR=$STASHY_CONT_HOME_DIR
export PROJ_HOST_DIR=$STASHY_HOST_DIR
export PROJ_IMG=$STASHY_IMG
export PROJ_PORT_INT=$STASHY_PORT_INT
export PROJ_USER=$STASHY_USER
export PROJ_VOL_DIR=$STASHY_VOL_DIR

log_exit pENV