#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV

source sENV.sh
if [ -f "project/pENV_MOD.sh" ]; then
  if [ -f "project/pENV_MOD.sh" ]; then
  source project/pENV_MOD.sh
fi

fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$API_CONT
export PROJ_CONT_DIR=$API_CONT_DIR
export PROJ_CONT_MNT_DIR=$API_CONT_MNT_DIR
export PROJ_HOST_DIR=$API_HOST_DIR
export PROJ_HOST_MNT_DIR=$API_HOST_MNT_DIR
export PROJ_IMG=$API_IMG
export PROJ_PORT_INT=$API_PORT_INT
export PROJ_VOL=$API_VOL

export PROJ_PORT_INT_DBG=$API_PORT_INT_DBG

log_exit pENV
