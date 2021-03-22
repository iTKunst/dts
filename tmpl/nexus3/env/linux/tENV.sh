#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh
if [ -f "project/pENV.sh" ]; then
  source project/pENV.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$NEXUS3_CONT
export PROJ_CONT_DATA_DIR=$NEXUS3_DATA_DIR
export PROJ_CONT_DIR=$NEXUS3_CONT_DIR
export PROJ_CONT_HOME_DIR=$NEXUS3_CONT_HOME_DIR
export PROJ_HOST_DIR=$NEXUS3_HOST_DIR
export PROJ_IMG=$NEXUS3_IMG
export PROJ_PORT_INT=$NEXUS3_PORT_INT
export PROJ_VOL=$NEXUS3_VOL
export PROJ_VOL_DIR=$NEXUS3_VOL_DIR


log_exit pENV
