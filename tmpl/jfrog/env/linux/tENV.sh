#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh
if [ -f "project/pENV_MOD.sh" ]; then
  source project/pENV_MOD.sh
fi


export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$JFROG_CONT
export PROJ_CONT_DATA_DIR=$JFROG_DATA_DIR
export PROJ_CONT_DIR=$JFROG_CONT_DIR
export PROJ_CONT_HOME_DIR=$JFROG_CONT_HOME_DIR
export PROJ_HOST_DIR=$JFROG_HOST_DIR
export PROJ_IMG=$JFROG_IMG
export PROJ_PORT_INT=$JFROG_PORT_INT
export PROJ_VOL=$JFROG_VOL
export PROJ_VOL_DIR=$JFROG_VOL_DIR

export PROJ_PORT_INT_ADMIN=$JFROG_PORT_INT_ADMIN
export PROJ_PORT_INT_DBG=$JFROG_PORT_INT_DBG



log_exit pENV

