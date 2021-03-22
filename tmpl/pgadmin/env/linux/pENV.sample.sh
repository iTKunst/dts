#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV


export PROJ_HOST=$PG_ADMIN_HOST
export PROJ_PASSWORD=$PG_ADMIN_PASSWORD
export PROJ_PORT_EXT=$PG_ADMIN_PORT_EXT
export PROJ_USER=$PG_ADMIN_USER


log_exit pENV_MOD