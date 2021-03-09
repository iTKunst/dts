#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV_MOD

source sENV.sh


export PROJ_HOST=$RHCOS_HOST
export PROJ_PASSWORD=$RHCOS_PASSWORD
export PROJ_PORT_EXT=$RHCOS_PORT_EXT
export PROJ_USER=$RHCOS_USER


log_exit pENV_MOD