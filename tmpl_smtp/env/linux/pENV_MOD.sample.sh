#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV_MOD

source sENV.sh


export PROJ_HOST=$SMTP_HOST
export PROJ_PASSWORD=$SMTP_PASSWORD
export PROJ_PORT_EXT=$SMTP_PORT_EXT
export PROJ_USER=$SMTP_USER


log_exit pENV_MOD