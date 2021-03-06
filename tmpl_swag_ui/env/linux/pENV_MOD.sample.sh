#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV_MOD

source sENV.sh


export PROJ_HOST=$SWAG_UI_HOST
export PROJ_PASSWORD=$SWAG_UI_PASSWORD
export PROJ_PORT_EXT=$SWAG_UI_PORT_EXT
export PROJ_USER=$SWAG_UI_USER

export PROJ_JSON=$SWAG_UI_JSON

log_exit pENV_MOD