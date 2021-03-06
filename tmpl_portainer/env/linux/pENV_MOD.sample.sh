#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV_MOD

source sENV.sh


export PROJ_HOST=$PORT_HOST
export PROJ_PASSWORD=$PORT_PASSWORD
export PROJ_PORT_EXT=$PORT_PORT_EXT
export PROJ_USER=$PORT_USER


log_exit pENV_MOD