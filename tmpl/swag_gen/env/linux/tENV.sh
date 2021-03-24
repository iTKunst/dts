#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh
if [ -f $PROJ_ENV_FILE ]; then
  source $PROJ_ENV_FILE
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$SWAG_CONT
export PROJ_CONT_DIR=$SWAG_CONT_DIR
export PROJ_CONT_MNT_DIR=$SWAG_CONT_MNT_DIR
export PROJ_HOST_DIR=$SWAG_HOST_DIR
export PROJ_HOST_MNT_DIR=$SWAG_HOST_MNT_DIR
export PROJ_IMG=$SWAG_IMG
export PROJ_PORT_INT=$SWAG_PORT_INT


log_exit tENV