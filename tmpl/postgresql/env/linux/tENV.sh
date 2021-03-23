#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh
if [ -f "project/pENV.sh" ]; then
  source project/pENV.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$PG_CONT
export PROJ_CONT_DIR=$PG_CONT_DIR
export PROJ_CONT_MNT_DIR=$PG_CONT_MNT_DIR
export PROJ_HOST_DIR=$PG_HOST_DIR
export PROJ_HOST_MNT_DIR=$PG_HOST_MNT_DIR
export PROJ_IMG=$PG_IMG
export PROJ_PORT_INT=$PG_PORT_INT
export PROJ_VOL=$PG_VOL

log_exit tENV