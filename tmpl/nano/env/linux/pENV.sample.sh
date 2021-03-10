#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh


export PROJ_HOST=$NANO_HOST
export PROJ_PASSWORD=$NANO_PASSWORD
export PROJ_PORT_EXT=$NANO_PORT_EXT
export PROJ_USER=$NANO_USER


log_exit pENV_MOD