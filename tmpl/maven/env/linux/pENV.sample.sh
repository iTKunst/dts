#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV

source tENV.sh


export PROJ_HOST=$MVN_HOST
export PROJ_PASSWORD=$MVN_PASSWORD
export PROJ_PORT_EXT=$MVN_PORT_EXT
export PROJ_USER=$MVN_USER

export PROJ_PORT_EXT_DBG=$MVN_PORT_EXT_DBG

log_exit pENV_MOD