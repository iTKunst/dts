#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh
if [ -f "project/pENV_MOD.sh" ]; then
  source project/pENV_MOD.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$MVN_LIB_CONT
export PROJ_CONT_DATA_DIR=$MVN_LIB_DATA_DIR
export PROJ_CONT_DIR=$MVN_LIB_CONT_DIR
export PROJ_CONT_HOME_DIR=$MVN_LIB_CONT_HOME_DIR
export PROJ_HOST_DIR=$MVN_LIB_HOST_DIR
export PROJ_IMG=$MVN_LIB_IMG
export PROJ_PORT_INT=$MVN_LIB_PORT_INT
export PROJ_VOL=$MVN_LIB_VOL
export PROJ_VOL_DIR=$MVN_LIB_VOL_DIR

log_exit pENV