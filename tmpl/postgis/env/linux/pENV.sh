#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV

source sENV.sh
if [ -f "project/pENV_MOD.sh" ]; then
  source project/pENV_MOD.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$GIS_CONT
export PROJ_CONT_DATA_DIR=$GIS_DATA_DIR
export PROJ_CONT_DIR=$GIS_CONT_DIR
export PROJ_CONT_HOME_DIR=$GIS_CONT_HOME_DIR
export PROJ_HOST_DIR=$GIS_HOST_DIR
export PROJ_IMG=$GIS_IMG
export PROJ_PORT_INT=$GIS_PORT_INT
export PROJ_VOL=$GIS_VOL
export PROJ_VOL_DIR=$GIS_VOL_DIR


log_exit pENV