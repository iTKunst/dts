#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV


export PROJ_HOST=$REACT_HOST
export PROJ_PASSWORD=$REACT_PASSWORD
export PROJ_PORT_EXT=$REACT_PORT_EXT
export PROJ_USER=$REACT_USER


log_exit pENV_MOD