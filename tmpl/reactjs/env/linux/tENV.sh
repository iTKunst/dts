#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh
if [ -f "project/pENV.sh" ]; then
  source project/pENV.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$REACT_CONT
export PROJ_CONT_DATA_DIR=$REACT_CONT_DATA_DIR
export PROJ_CONT_DIR=$REACT_CONT_DIR
export PROJ_CONT_HOME_DIR=$REACT_CONT_HOME_DIR
export PROJ_HOST_DIR=$REACT_HOST_DIR
export PROJ_IMG=$REACT_IMG
export PROJ_PORT_INT=$REACT_PORT_INT
export PROJ_VOL=$REACT_VOL
export PROJ_VOL_DIR=$REACT_VOL_DIR

log_exit pENV