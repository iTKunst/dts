#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV


export PROJ_HOST=$SRVR_HOST
export PROJ_PASSWORD=$SRVR_PASSWORD
export PROJ_PORT_EXT=$SRVR_PORT_EXT
export PROJ_USER=$SRVR_USER

export PROJ_ART=$SRVR_ART
export PROJ_GRP=$SRVR_GRP
export PROJ_LOG_LEVEL=$SRVR_LOG_LEVEL
export PROJ_PORT_DBG_EXT=$SRVR_PORT_DBG_EXT
export PROJ_VER=$SRVR_VER

export PROJ_DB_ADDR=PG_DB_ADDR
export PROJ_DB_DATABASE=$PG_DB_NAME
export PROJ_DB_PASSWORD=$PG_PASSWORD
export PROJ_DB_USER=$PG_USER
export PROJ_DB_VENDOR=$PG_VENDOR

export PROJ_REPO_HOST=$NEXUS3_HOST
export PROJ_REPO_IP=$NEXUS3_IP
export PROJ_REPO_PORT_EXT=$NEXUS3_PORT_EXT

log_exit pENV