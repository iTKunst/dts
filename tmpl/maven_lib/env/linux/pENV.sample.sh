#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV


export PROJ_HOST=$MVN_LIB_HOST
export PROJ_PASSWORD=$MVN_LIB_PASSWORD
export PROJ_PORT_EXT=$MVN_LIB_PORT_EXT
export PROJ_USER=$MVN_LIB_USER


log_exit pENV_MOD