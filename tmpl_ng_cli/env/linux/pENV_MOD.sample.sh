#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV_MOD

source sENV.sh


export PROJ_HOST=$SOAP_HOST
export PROJ_PASSWORD=$SOAP_PASSWORD
export PROJ_PORT_EXT=$SOAP_PORT_EXT
export PROJ_USER=$SOAP_USER

log_exit pENV_MOD