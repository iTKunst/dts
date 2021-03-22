#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh
if [ -f "project/pENV.sh" ]; then
  source project/pENV.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$VOL_CONT
export PROJ_CONT_DATA_DIR=$VOL_CONT_DATA_DIR
export PROJ_CONT_DIR=$VOL_CONT_DIR
export PROJ_CONT_HOME_DIR=$VOL_CONT_HOME_DIR
export PROJ_HOST_DIR=$VOL_HOST_DIR
export PROJ_IMG=$VOL_IMG
export PROJ_PORT_INT=$VOL_PORT_INT
export PROJ_VOL=$MS_VOL
export PROJ_VOL_DIR=$VOL_DIR

log_exit pENV