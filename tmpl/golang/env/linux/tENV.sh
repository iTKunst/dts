#!/bin/bash
# shellcheck disable=SC2086

log_enter tENV

source $FILE_SYS_ENV
if [ -f "$PROJ_ENV_FILE" ]; then
  source $PROJ_ENV_FILE
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$GO_CONT
export PROJ_CONT_DATA_DIR=$GO_DATA_DIR
export PROJ_CONT_DIR=$GO_CONT_DIR
export PROJ_CONT_HOME_DIR=$GO_CONT_HOME_DIR
export PROJ_HOST_DIR=$GO_HOST_DIR
export PROJ_IMG=$GO_IMG
export PROJ_PORT_INT=$GO_PORT_INT
export PROJ_VOL=$GO_VOL
export PROJ_VOL_DIR=$GO_VOL_DIR

log_exit tENV