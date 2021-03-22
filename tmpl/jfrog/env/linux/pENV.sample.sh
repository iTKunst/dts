#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV


export PROJ_HOST=$JFROG_HOST
export PROJ_PASSWORD=$JFROG_PASSWORD
export PROJ_PORT_EXT=$JFROG_PORT_EXT
export PROJ_USER=$JFROG_USER

export PROJ_PORT_EXT_ADMIN=$JFROG_PORT_EXT_ADMIN
export PROJ_PORT_EXT_DBG=$JFROG_PORT_EXT_DBG
export PROJ_REG_DEV=$JFROG_REG_DEV
export PROJ_REG_PROD=$JFROG_REG_PROD
export PROJ_REG_REM=$JFROG_REG_REM
export PROJ_REG_VIRT=$JFROG_REG_VIRT


log_exit pENV_MOD