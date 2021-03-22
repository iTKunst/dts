#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV


export PROJ_HOST=$NET_HOST
export PROJ_PASSWORD=$NET_PASSWORD
export PROJ_PORT_EXT=$NET_PORT_EXT
export PROJ_USER=$NET_USER


log_exit pENV_MOD