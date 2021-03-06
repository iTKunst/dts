#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV_MOD

source sENV.sh


export PROJ_HOST=$SWAG_ED_HOST
export PROJ_PASSWORD=$SWAG_ED_PASSWORD
export PROJ_PORT_EXT=$SWAG_ED_PORT_EXT
export PROJ_USER=$SWAG_ED_USER


log_exit pENV_MOD