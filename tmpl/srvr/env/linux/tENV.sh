#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh
if [ -f "project/pENV_MOD.sh" ]; then
  source project/pENV_MOD.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$SRVR_CONT
export PROJ_CONT_DIR=$SRVR_CONT_DIR
export PROJ_CONT_MNT_DIR=$SRVR_CONT_MNT_DIR
export PROJ_HOST_DIR=$SRVR_HOST_DIR
export PROJ_HOST_MNT_DIR=$SRVR_HOST_MNT_DIR
export PROJ_IMG=$SRVR_IMG
export PROJ_PORT_INT=$SRVR_PORT_INT
export PROJ_VOL=$SRVR_VOL

export PROJ_CONT_CERT_DIR=$SRVR_CONT_CERT_DIR


log_exit pENV
