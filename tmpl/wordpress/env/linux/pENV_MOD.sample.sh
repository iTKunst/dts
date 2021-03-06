#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh


export PROJ_HOST=$WP_HOST
export PROJ_PASSWORD=$WP_PASSWORD
export PROJ_PORT_EXT=$WP_PORT_EXT
export PROJ_USER=$WP_USER

export PROJ_DB_HOST=$MS_CONT
export PROJ_DB_NAME=$MS_NAME
export PROJ_DB_PASSWORD=$MS_PASSWORD
export PROJ_DB_USER=$MS_USER
export PROJ_TABLE_PREFIX=$WP_TABLE_PREFIX

log_exit pENV