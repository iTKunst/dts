#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV_MOD

source sENV.sh


export PROJ_HOST=$STASHY_HOST
export PROJ_PASSWORD=$STASHY_PASSWORD
export PROJ_PORT_EXT=$STASHY_PORT_EXT
export PROJ_USER=$STASHY_USER


log_exit pENV_MOD