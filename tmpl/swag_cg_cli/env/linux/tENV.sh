#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh
if [ -f "project/pENV.sh" ]; then
  source project/pENV.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$SWAG_CG_CLI_CONT
export PROJ_CONT_DIR=$SWAG_CG_CLI_CONT_DIR
export PROJ_CONT_MNT_DIR=$SWAG_CG_CLI_CONT_MNT_DIR
export PROJ_HOST_DIR=$SWAG_CG_CLI_HOST_DIR
export PROJ_HOST_MNT_DIR=$SWAG_CG_CLI_HOST_MNT_DIR
export PROJ_IMG=$SWAG_CG_CLI_IMG
export PROJ_PORT_INT=$SWAG_CG_CLI_PORT_INT


log_exit tENV