#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh
if [ -f "project/pENV_MOD.sh" ]; then
  source project/pENV_MOD.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$OA_CLI_CONT
export PROJ_CONT_DATA_DIR=$OA_CLI_DATA_DIR
export PROJ_CONT_DIR=$OA_CLI_CONT_DIR
export PROJ_CONT_HOME_DIR=$OA_CLI_CONT_HOME_DIR
export PROJ_HOST_DIR=$OA_CLI_HOST_DIR
export PROJ_IMG=$OA_CLI_IMG
export PROJ_PORT_INT=$OA_CLI_PORT_INT
export PROJ_VOL=$OA_CLI_VOL
export PROJ_VOL_DIR=$OA_CLI_VOL_DIR

log_exit pENV