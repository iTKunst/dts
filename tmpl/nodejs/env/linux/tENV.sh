#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh
if [ -f "project/pENV.sh" ]; then
  source project/pENV.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$NODE_CONT
export PROJ_CONT_DATA_DIR=$NODE_DATA_DIR
export PROJ_CONT_DIR=$NODE_CONT_DIR
export PROJ_CONT_HOME_DIR=$NODE_CONT_HOME_DIR
export PROJ_HOST_DIR=$NODE_HOST_DIR
export PROJ_IMG=$NODE_IMG
export PROJ_PORT_INT=$NODE_PORT_INT
export PROJ_VOL=$NODE_VOL
export PROJ_VOL_DIR=$NODE_VOL_DIR


log_exit pENV