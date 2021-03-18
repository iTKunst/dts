#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV

source tENV.sh


export PROJ_HOST=$SMTP_HOST
export PROJ_IP=$SMTP_IP
export PROJ_PASSWORD=$SMTP_PASSWORD
export PROJ_PORT_EXT=$SMTP_PORT_EXT
export PROJ_USER=$SMTP_USER

export PROJ_SH_ADDRESS=$SMTP_SH_ADDRESS
export PROJ_SH_ALIASES=$SMTP_SH_ALIASES
export PROJ_SH_PORT=$SMTP_SH_PORT

log_exit pENV