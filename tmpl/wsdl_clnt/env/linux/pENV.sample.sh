#!/bin/bash
# shellcheck disable=SC2086


log_env_enter pENV


export PROJ_HOST=$WSDL_CLNT_HOST
export PROJ_PASSWORD=$WSDL_CLNT_PASSWORD
export PROJ_PORT_EXT=$WSDL_CLNT_PORT_EXT
export PROJ_USER=$WSDL_CLNT_USER

export PROJ_ART=$WSDL_CLNT_ART
export PROJ_FILE=$WSDL_CLNT_FILE
export PROJ_GRP=$WSDL_CLNT_GRP
export PROJ_PKG=$WSDL_CLNT_PKG
export PROJ_REPO_HOST=$NEXUS3_HOST
export PROJ_REPO_IP=$NEXUS3_IP
export PROJ_REPO_PORT_EXT=$NEXUS3_PORT_EXT
export PROJ_VER=$WSDL_CLNT_VER

log_env_enter pENV