#!/bin/bash
# shellcheck disable=SC2086


log_env_enter pENV


export PROJ_HOST=$WSDL_CLNT_HOST
export PROJ_PASSWORD=$WSDL_CLNT_PASSWORD
export PROJ_PORT_EXT=$WSDL_CLNT_PORT_EXT
export PROJ_USER=$WSDL_CLNT_USER

export PROJ_FILE=$SWAG_CG_CLI_FILE

log_env_enter pENV