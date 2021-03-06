#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV

source sENV.sh
if [ -f "project/pENV_MOD.sh" ]; then
  source project/pENV_MOD.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$SWAG_UI_CONT
export PROJ_CONT_DATA_DIR=$SWAG_UI_CONT_DATA_DIR
export PROJ_CONT_DIR=$SWAG_UI_CONT_DIR
export PROJ_CONT_HOME_DIR=$SWAG_UI_CONT_HOME_DIR
export PROJ_HOST_DIR=$SWAG_UI_HOST_DIR
export PROJ_IMG=$SWAG_UI_IMG
export PROJ_PORT_INT=$SWAG_UI_PORT_INT
export PROJ_VOL=$SWAG_UI_VOL
export PROJ_VOL_DIR=$SWAG_UI_VOL_DIR


log_exit pENV