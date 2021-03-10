#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh


export PROJ_HOST=$GRDL_LIB_HOST
export PROJ_PASSWORD=$GRDL_LIB_PASSWORD
export PROJ_PORT_EXT=$GRDL_LIB_PORT_EXT
export PROJ_USER=$GRDL_LIB_USER


log_exit pENV_MOD