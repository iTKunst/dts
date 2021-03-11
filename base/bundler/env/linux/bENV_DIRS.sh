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
export GIT_DIR=$FOR_SLASH$GIT
export GLBL_DIR=$FOR_SLASH$GLBL
export LOG_DIR=$FOR_SLASH$LOG
export MISC_DIR=$FOR_SLASH$MISC
export OS_DIR=$FOR_SLASH$OS
export SYS_DIR=$FOR_SLASH$SYS
export TMPL_DIR=$FOR_SLASH$TMPL
export TMPL_CURR_DIR=$FOR_SLASH$TMPL_NAME

echo GLBL_DIR is $GLBL_DIR

echo bENV_DIRS [EXIT]
