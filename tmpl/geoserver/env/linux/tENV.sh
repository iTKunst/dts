#!/bin/bash
# shellcheck disable=SC2086

log_enter pENV

source sENV.sh
if [ -f "project/pENV_MOD.sh" ]; then
  source project/pENV_MOD.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$GEO_CONT
export PROJ_CONT_DATA_DIR=$GEO_DATA_DIR
export PROJ_CONT_DIR=$GEO_CONT_DIR
export PROJ_CONT_HOME_DIR=$GEO_CONT_HOME_DIR
export PROJ_HOST_DIR=$GEO_HOST_DIR
export PROJ_IMG=$GEO_IMG
export PROJ_PORT_INT=$GEO_PORT_INT
export PROJ_VOL=$GEO_VOL
export PROJ_VOL_DIR=$GEO_VOL_DIR


log_exit pENV