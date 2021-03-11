#!/bin/bash
# shellcheck disable=SC2086

echo bENV_DIRS [ENTER]

source settings.sh
source bin/bENV_NAMES.sh
source bin/bENV_TKNS.sh


export BASE_DIR=$FOR_SLASH$BASE
export BNDL_DIR=$FOR_SLASH$BNDL
export DCKR_DIR=$FOR_SLASH$DCKR
export ENV_DIR=$FOR_SLASH$ENV
export GIT_DIR=$SLASH$GIT
export GLBL_DIR=$SLASH$GLBL
export LOG_DIR=$SLASH$LOG
export MISC_DIR=$SLASH$MISC
export OS_DIR=$SLASH$OS
export SYS_DIR=$SLASH$SYS
export TMPL_DIR=$SLASH$TMPL
export TMPL_CURR_DIR=$SLASH$TMPL_NAME

echo bENV_DIRS [EXIT]
