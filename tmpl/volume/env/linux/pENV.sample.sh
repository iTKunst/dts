#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV

source tENV.sh


export PROJ_HOST=$VOL_HOST
export PROJ_PASSWORD=$VOL_PASSWORD
export PROJ_PORT_EXT=$VOL_PORT_EXT
export PROJ_USER=$VOL_USER


log_exit pENV_MOD