#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV

source sENV.sh
if [ -f "project/pENV_MOD.sh" ]; then
  source project/pENV_MOD.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$WF_CONT
export PROJ_CONT_DATA_DIR=$WF_CONT_DATA_DIR
export PROJ_CONT_DIR=$WF_CONT_DIR
export PROJ_CONT_HOME_DIR=$WF_CONT_HOME_DIR
export PROJ_HOST_DIR=$WF_HOST_DIR
export PROJ_IMG=$WF_IMG
export PROJ_PORT_INT=$WF_PORT_INT
export PROJ_VOL=$WF_VOL
export PROJ_VOL_DIR=$WF_VOL_DIR

export PROJ_PORT_INT_ADMIN=$WF_PORT_INT_ADMIN
export PROJ_PORT_INT_APPS=$WF_PORT_INT_APPS
export PROJ_PORT_INT_DBG=$WF_PORT_INT_DBG


log_exit pENV