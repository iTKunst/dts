#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV

source tENV.sh


export PROJ_HOST=$KEY_HOST
export PROJ_PASSWORD=$KEY_PASSWORD
export PROJ_PORT_EXT=$KEY_PORT_EXT
export PROJ_USER=$KEY_USER

export PROJ_DB_ADDR=
export PROJ_DB_NAME=$PG_DB_NAME
export PROJ_DB_PASSWORD=$PG_DB_PASSWORD
export PROJ_DB_USER=$PG_DB_USER
export PROJ_DB_VENDOR=$KEY_DB_VENDOR
export PROJ_DBG=$KEY_DBG
export PROJ_DBG_PORT=$KEY_DBG_PORT
export PROJ_IMPORT=$KEY_IMPORT
export PROJ_LOG_LEVEL=$KEY_LOG_LEVEL
export PROJ_PORT_EXT_ADMIN=$KEY_PORT_EXT_ADMIN
export PROJ_PROXY_FORWARD=$KEY_PROXY_FORWARD
export PROJ_ROOT_LOG_LEVEL=$KEY_ROOT_LOG_LEVEL

log_exit pENV_MOD