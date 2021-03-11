#!/bin/bash
# shellcheck disable=SC2086

echo bENV_DIRS [ENTER]

source settings.sh
source bENV_NAMES.sh
source bENV_TKNS.sh


export DIR_BASE=$FOR_SLASH$BASE
export DIR_BNDL=$FOR_SLASH$BNDL
export DIR_GIT=$SLASH$GIT
export DIR_GLBL=$SLASH$GLBL
export DIR_LOG=$SLASH$LOG
export DIR_MISC=$SLASH$MISC
export DIR_OS=$SLASH$OS
export DIR_SYS=$SLASH$SYS
export DIR_TMPL=$SLASH$TMPL
export DIR_TMPL_CUR=$SLASH$TMPL_NAME

echo bENV_DIRS [EXIT]
