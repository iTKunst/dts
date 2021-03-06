#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV

source sENV.sh
if [ -f "project/pENV_MOD.sh" ]; then
  source project/pENV_MOD.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$SWAG_ED_CONT
export PROJ_CONT_DATA_DIR=$SWAG_ED_DATA_DIR
export PROJ_CONT_DIR=$SWAG_ED_CONT_DIR
export PROJ_CONT_HOME_DIR=$SWAG_ED_CONT_HOME_DIR
export PROJ_HOST_DIR=$SWAG_ED_HOST_DIR
export PROJ_IMG=$SWAG_ED_IMG
export PROJ_PORT_INT=$SWAG_ED_PORT_INT
export PROJ_VOL=$SWAG_ED_VOL
export PROJ_VOL_DIR=$SWAG_ED_VOL_DIR

log_exit pENV