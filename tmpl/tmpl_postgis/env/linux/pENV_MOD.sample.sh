#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV_MOD

source sENV.sh


export PROJ_HOST=$GIS_HOST
export PROJ_PASSWORD=$GIS_PASSWORD
export PROJ_PORT_EXT=$GIS_PORT_EXT
export PROJ_USER=$GIS_USER

export PROJ_DB_NAME=$GIS_DB_NAME

log_exit pENV_MOD