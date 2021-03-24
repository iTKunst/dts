#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh
if [ -f "$PROJ_ENV_FILE" ]; then
  source $PROJ_ENV_FILE
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$GRDL_CONT
export PROJ_DATA_DIR=$GRDL_CONT_DATA_DIR
export PROJ_CONT_DIR=$GRDL_CONT_DIR
export PROJ_CONT_HOME_DIR=$GRDL_CONT_HOME_DIR
export PROJ_HOST_DIR=$GRDL_HOST_DIR
export PROJ_IMG=$GRDL_IMG
export PROJ_PORT_INT=$GRDL_PORT_INT
export PROJ_VOL=$GRDL_VOL
export PROJ_VOL_DIR=$GRDL_VOL_DIR

log_exit tENV