#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV_MOD

source sENV.sh


export PROJ_HOST=$TS_HOST
export PROJ_PASSWORD=$TS_PASSWORD
export PROJ_PORT_EXT=$TS_PORT_EXT
export PROJ_USER=$TS_USER

export PROJ_PORT_EXT_ADMIN=$TS_PORT_EXT_ADMIN
export PROJ_PORT_EXT_APPS=$TS_PORT_EXT_APPS
export PROJ_PORT_EXT_DBG=$TS_PORT_EXT_DBG


log_exit pENV_MOD