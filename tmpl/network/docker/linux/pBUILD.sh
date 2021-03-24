#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh


log_load pBUILD

source $TMPL_ENV_FILE_FILE

CONT_DIR=$PROJ_CONT_HOME_DIR
IMG=$PROJ_IMG

log_var HOME $HOME
log_var IMG $IMG

# Do nothing

log_cmd Please run pGO to create and run the container


log_unload pBUILD
