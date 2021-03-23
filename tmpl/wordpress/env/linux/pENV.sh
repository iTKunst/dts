#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV

source tENV.sh


export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$WP_CONT
export PROJ_CONT_DATA_DIR=$WP_CONT_DATA_DIR
export PROJ_CONT_DIR=$WP_CONT_DIR
export PROJ_CONT_HOME_DIR=$WP_CONT_HOME_DIR
export PROJ_HOST_DIR=$WP_HOST_DIR
export PROJ_IMG=$WP_IMG
export PROJ_PORT_INT=$WP_PORT_INT
export PROJ_VOL=$WP_VOL
export PROJ_VOL_DIR=$WP_VOL_DIR


log_exit pENV
