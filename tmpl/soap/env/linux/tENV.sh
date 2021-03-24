#!/bin/bash
# shellcheck disable=SC2086

log_env_enter tENV

source sENV.sh

log_env_var PROJ_ENV_FILE $PROJ_ENV_FILE

if [ -f $PROJ_ENV_FILE ]; then
  source $PROJ_ENV_FILE
fi


export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$SOAP_CONT
export PROJ_CONT_DIR=$SOAP_CONT_DIR
export PROJ_CONT_MNT_DIR=$SOAP_CONT_MNT_DIR
export PROJ_HOST_DIR=$SOAP_HOST_DIR
export PROJ_HOST_MNT_DIR=$SOAP_HOST_MNT_DIR
export PROJ_IMG=$SOAP_IMG
export PROJ_PORT_INT=$SOAP_PORT_INT
export PROJ_VOL=$SOAP_VOL

export PROJ_CONT_CERT_DIR=$SOAP_CONT_CERT_DIR

log_env_exit tENV