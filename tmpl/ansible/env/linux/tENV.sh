#!/bin/bash
# shellcheck disable=SC2086

log_enter tENV

source sENV.sh

if [ -f "project/pENV_MOD.sh" ]; then
  source project/pENV_MOD.sh
fi

export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$ANS_CONT
export PROJ_CONT_DATA_DIR=$ANS_DATA_DIR
export PROJ_CONT_DIR=$ANS_CONT_DIR
export PROJ_CONT_HOME_DIR=$ANS_CONT_HOME_DIR
export PROJ_HOST_DIR=$ANS_HOST_DIR
export PROJ_IMG=$ANS_IMG
export PROJ_PORT_INT=$ANS_PORT_INT
export PROJ_VOL=$ANS_VOL
export PROJ_VOL_DIR=$ANS_VOL_DIR


log_exit pENV