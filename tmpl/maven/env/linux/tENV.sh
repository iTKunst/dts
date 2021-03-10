#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV

source sENV.sh
if [ -f "project/pENV_MOD.sh" ]; then
  source project/pENV_MOD.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$MVN_CONT
export PROJ_CONT_DIR=$MVN_DIR
export PROJ_CONT_MNT_DIR=$MVN_CONT_MNT_DIR
export PROJ_HOST_DIR=$MVN_HOST_DIR
export PROJ_HOST_MNT_DIR=$MVN_HOST_MNT_DIR
export PROJ_IMG=$MVN_IMG
export PROJ_PORT_INT=$MVN_PORT_INT

export PROJ_CONT_CFG_DIR=$MVN_CONT_CFG_DIR
export PROJ_HOST_CFG_DIR=$MVN_HOST_CFG_DIR
export PROJ_PORT_INT_DBG=$MVN_PORT_INT_DBG

log_exit pENV