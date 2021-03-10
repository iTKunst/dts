#!/bin/bash
# shellcheck disable=SC2086


log_enter tENV

source sENV.sh


export PROJ_HOST=$OA_CLI_HOST
export PROJ_PASSWORD=$OA_CLI_PASSWORD
export PROJ_PORT_EXT=$OA_CLI_PORT_EXT
export PROJ_USER=$OA_CLI_USER


log_exit pENV_MOD