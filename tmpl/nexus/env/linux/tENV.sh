#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh
if [ -f "s$PROJ_ENV_FILE" ]; then
  source s$PROJ_ENV_FILE
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$NEXUS_CONT
export PROJ_CONT_DIR=$NEXUS_CONT_DIR
export PROJ_CONT_MNT_DIR=$NEXUS_CONT_MNT_DIR
export PROJ_HOST_DIR=$NEXUS_HOST_DIR
export PROJ_HOST_MNT_DIR=$NEXUS_HOST_MNT_DIR
export PROJ_IMG=$NEXUS_IMG
export PROJ_PORT_INT=$NEXUS_PORT_INT


log_exit tENV
