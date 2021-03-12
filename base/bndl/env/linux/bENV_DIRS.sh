#!/bin/bash
# shellcheck disable=SC2086

# echo bENV_DIRS [ENTER]

source settings.sh
source bin/bENV_NAMES.sh
source bin/bENV_TKNS.sh


export BASE_DIR=$DIR_SLASH$BASE
export BIN_DIR=$BIN
export BNDL_DIR=$DIR_SLASH$BNDL
export DCKR_DIR=$DIR_SLASH$DCKR
export ENV_DIR=$DIR_SLASH$ENV
export GIT_DIR=$DIR_SLASH$GIT
export GLBL_DIR=$DIR_SLASH$GLBL
export LOG_DIR=$DIR_SLASH$LOG
export MISC_DIR=$DIR_SLASH$MISC
export OS_DIR=$DIR_SLASH$OS
export SYS_DIR=$DIR_SLASH$SYS
export TMPL_DIR=$DIR_SLASH$TMPL
export TMPL_CURR_DIR=$DIR_SLASH$TMPL_NAME

# echo bENV_DIRS [EXIT]
