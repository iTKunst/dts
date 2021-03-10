#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh
if [ -f "project/pENV_MOD.sh" ]; then
  source project/pENV_MOD.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$NET_CONT
export PROJ_CONT_DATA_DIR=$NET_DATA_DIR
export PROJ_CONT_DIR=$NET_CONT_DIR
export PROJ_CONT_HOME_DIR=$NET_CONT_HOME_DIR
export PROJ_HOST_DIR=$NET_HOST_DIR
export PROJ_IMG=$NET_IMG
export PROJ_PORT_INT=$NET_PORT_INT
export PROJ_VOL=$NET_VOL
export PROJ_VOL_DIR=$NET_VOL_DIR

log_exit pENV