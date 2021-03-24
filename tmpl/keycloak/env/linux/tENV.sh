#!/bin/bash
# shellcheck disable=SC2086

log_enter tENV

source sENV.sh
if [ -f "$PROJ_ENV_FILE" ]; then
  source $PROJ_ENV_FILE
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$KEY_CONT
export PROJ_CONT_DATA_DIR=$KEY_DATA_DIR
export PROJ_CONT_DIR=$KEY_CONT_DIR
export PROJ_HOST_DIR=$KEY_HOST_DIR
export PROJ_IMG=$KEY_IMG
export PROJ_PORT_INT=$KEY_PORT_INT
export PROJ_VOL=$KEY_VOL

export PROJ_CONT_MNT_DIR=$KEY_HOST_MNT_DIR
export PROJ_HOST_MNT_DIR=$KEY_HOST_MNT_DIR
export PROJ_PORT_INT_ADMIN=$KEY_PORT_INT_ADMIN

log_exit tENV
