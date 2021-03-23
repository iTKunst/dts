#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV


export PROJ_HOST=$OA_SRVR_HOST
export PROJ_PASSWORD=$OA_SRVR_PASSWORD
export PROJ_PORT_EXT=$OA_SRVR_PORT_EXT
export PROJ_USER=$OA_SRVR_USER


log_exit pENV