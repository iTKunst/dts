#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV


export PROJ_HOST=$PG_HOST
export PROJ_PASSWORD=$PG_PASSWORD
export PROJ_PORT_EXT=$PG_PORT_EXT
export PROJ_USER=$PG_USER

export PROJ_DB_NAME=$PG_DB_NAME

log_exit pENV