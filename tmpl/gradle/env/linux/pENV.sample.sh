#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV_MOD

source sENV.sh


export PROJ_HOST=$GRDL_HOST
export PROJ_PASSWORD=$GRDL_PASSWORD
export PROJ_PORT_EXT=$GRDL_PORT_EXT
export PROJ_USER=$GRDL_USER


log_exit pENV_MOD