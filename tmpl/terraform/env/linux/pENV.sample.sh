#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV


export PROJ_HOST=$TER_HOST
export PROJ_PASSWORD=$TER_PASSWORD
export PROJ_PORT_EXT=$TER_PORT_EXT
export PROJ_USER=$TER_USER


log_exit pENV_MOD