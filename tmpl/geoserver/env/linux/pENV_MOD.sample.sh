#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV_MOD

source sENV.sh


export PROJ_HOST=$GEO_HOST
export PROJ_PASSWORD=$GEO_PASSWORD
export PROJ_PORT_EXT=$GEO_PORT_EXT
export PROJ_USER=$GEO_USER

export PROJ_DB_NAME=$GEO_DB_NAME

log_exit pENV_MOD