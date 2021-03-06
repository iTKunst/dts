#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV_MOD

source sENV.sh


export PROJ_HOST=$MS_HOST
export PROJ_PASSWORD=$MS_PASSWORD
export PROJ_PORT_EXT=$MS_PORT_EXT
export PROJ_USER=$MS_USER


log_exit pENV_MOD