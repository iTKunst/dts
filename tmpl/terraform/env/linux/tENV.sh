#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh
if [ -f $PROJ_ENV_FILE ]; then
  source $PROJ_ENV_FILE
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$TER_CONT
export PROJ_CONT_DATA_DIR=$TER_DATA_DIR
export PROJ_CONT_DIR=$TER_CONT_DIR
export PROJ_CONT_HOME_DIR=$TER_CONT_HOME_DIR
export PROJ_HOST_DIR=$TER_HOST_DIR
export PROJ_IMG=$TER_IMG
export PROJ_PORT_INT=$TER_PORT_INT
export PROJ_VOL=$TER_VOL
export PROJ_VOL_DIR=$TER_VOL_DIR

log_exit tENV