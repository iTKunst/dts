#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh
if [ -f "project/pENV.sh" ]; then
  source project/pENV.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$SRVR2_CONT
export PROJ_CONT_DIR=$SRVR2_CONT_DIR
export PROJ_CONT_MNT_DIR=$SRVR2_CONT_MNT_DIR
export PROJ_HOST_DIR=$SRVR2_HOST_DIR
export PROJ_HOST_MNT_DIR=$SRVR2_HOST_MNT_DIR
export PROJ_IMG=$SRVR2_IMG
export PROJ_PORT_INT=$SRVR2_PORT_INT
export PROJ_VOL=$SRVR2_VOL

export PROJ_PORT_INT_DBG=$SRVR2_PORT_INT_DBG

log_exit pENV
