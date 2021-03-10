#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV

source tENV.sh


export PROJ_HOST=$GO_HOST
export PROJ_PASSWORD=$GO_PASSWORD
export PROJ_PORT_EXT=$GO_PORT_EXT
export PROJ_USER=$GO_USER


log_exit pENV_MOD