#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV


export PROJ_HOST=$SRVR2_HOST
export PROJ_PASSWORD=$SRVR2_PASSWORD
export PROJ_PORT_EXT=$SRVR2_PORT_EXT
export PROJ_USER=$SRVR2_USER

export PROJ_PORT_EXT_DBG=$SRVR2_PORT_EXT_DBG

export PROJ_ART=$SOAP_ART
export PROJ_GRP=$SOAP_GRP
export PROJ_REPO_URL=$NEXUS3_HOST
export PROJ_REPO_PORT=$NEXUS3_PORT_EXT
export PROJ_VER=$SOAP_VER

export PROJ_DB_ADDR=
export PROJ_DB_NAME=$PG_DB_NAME
export PROJ_DB_PASSWORD=$PG_DB_PASSWORD
export PROJ_DB_USER=$PG_DB_USER
export PROJ_DB_VENDOR=$PG_DB_VENDOR

log_exit pENV_MOD