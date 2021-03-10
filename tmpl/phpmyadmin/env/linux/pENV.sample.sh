#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV

source tENV.sh


export PROJ_HOST=$MS_ADMIN_HOST
export PROJ_PASSWORD=$MS_ADMIN_PASSWORD
export PROJ_PORT_EXT=$MS_ADMIN_PORT_EXT
export PROJ_USER=$MS_ADMIN_USER

export PROJ_DB_HOST=$MS_HOST
export PROJ_DB_PORT=$MS_PORT_EXT

log_exit pENV_MOD