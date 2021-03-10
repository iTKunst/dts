#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV

source tENV.sh


export PROJ_HOST=$NODE_HOST
export PROJ_PASSWORD=$NODE_PASSWORD
export PROJ_PORT_EXT=$NODE_PORT_EXT
export PROJ_USER=$NODE_USER

export PROJ_LOG_LEVEL=$NODE_LOG_LEVEL

log_exit pENV_MOD