#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV

source sENV.sh
if [ -f "project/pENV_MOD.sh" ]; then
  source project/pENV_MOD.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$TS_CONT
export PROJ_CONT_DATA_DIR=$TS_DATA_DIR
export PROJ_CONT_DIR=$TS_CONT_DIR
export PROJ_CONT_HOME_DIR=$TS_CONT_HOME_DIR
export PROJ_HOST_DIR=$TS_HOST_DIR
export PROJ_IMG=$TS_IMG
export PROJ_PORT_INT=$TS_PORT_INT
export PROJ_VOL=$TS_VOL
export PROJ_VOL_DIR=$TS_VOL_DIR

export PROJ_PORT_INT_ADMIN=$WF_PORT_INT_ADMIN
export PROJ_PORT_INT_APPS=$WF_PORT_INT_APPS
export PROJ_PORT_INT_DBG=$WF_PORT_INT_DBG

log_exit pENV