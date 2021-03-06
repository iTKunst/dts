#!/bin/bash
# shellcheck disable=SC2086

log_enter pENV

source sENV.sh
if [ -f "project/pENV_MOD.sh" ]; then
  source project/pENV_MOD.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$RHCOS_CONT
export PROJ_CONT_DATA_DIR=$RHCOS_DATA_DIR
export PROJ_CONT_DIR=$RHCOS_CONT_DIR
export PROJ_CONT_HOME_DIR=$RHCOS_CONT_HOME_DIR
export PROJ_HOST_DIR=$RHCOS_HOST_DIR
export PROJ_IMG=$RHCOS_IMG
export PROJ_PORT_INT=$RHCOS_PORT_INT
export PROJ_VOL=$RHCOS_VOL
export PROJ_VOL_DIR=$RHCOS_VOL_DIR


log_exit pENV