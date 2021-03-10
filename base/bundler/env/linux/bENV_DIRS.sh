#!/bin/bash
# shellcheck disable=SC2086

log_enter gENV_DIRS

source settings.sh
source bENV_NAMES.sh
source bENV_TKNS.sh

export BASE_DIR=$FOR_SLASH$BASE
export GLOBAL_DIR=$FOR_SLASH$GLOBAL
export SYSTEM_DIR=$FOR_SLASH$SYSTEM
export TEMPL_DIR=$FOR_SLASH$TEMPL

export GLBL_DIR=$DIR_DTS$BASE_DIR$GLOBAL_DIR
export SYS_DIR=$UP$UP$SYSTEM_DIR
export TMPL_DIR=$DIR_DTS$TEMPL_DIR$TMPL_NAME


log_exit gENV_DIRS
