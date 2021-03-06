#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV_MOD

source sENV.sh


export PROJ_HOST=$API_HOST
export PROJ_PASSWORD=$API_PASSWORD
export PROJ_PORT_EXT=$API_PORT_EXT
export PROJ_USER=$API_USER

export PROJ_PORT_EXT_DBG=$API_PORT_EXT_DBG

export PROJ_ART=$API_ART
export PROJ_GRP=$API_GRP
export PROJ_REPO_URL=$NEXUS3_HOST
export PROJ_REPO_PORT=$NEXUS3_PORT_EXT
export PROJ_VER=$API_VER



log_exit pENV_MOD