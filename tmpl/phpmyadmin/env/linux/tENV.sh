#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh
if [ -f "project/pENV.sh" ]; then
  source project/pENV.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$MS_ADMIN_CONT
export PROJ_CONT_DATA_DIR=$MS_ADMIN_DATA_DIR
export PROJ_CONT_DIR=$MS_ADMIN_CONT_DIR
export PROJ_CONT_HOME_DIR=$MS_ADMIN_CONT_HOME_DIR
export PROJ_HOST_DIR=$MS_ADMIN_HOST_DIR
export PROJ_IMG=$MS_ADMIN_IMG
export PROJ_PORT_INT=$MS_ADMIN_PORT_INT
export PROJ_VOL=$MS_ADMIN_VOL
export PROJ_VOL_DIR=$MS_ADMIN_VOL_DIR


log_exit tENV