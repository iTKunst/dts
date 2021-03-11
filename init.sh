#!/bin/bash
# shellcheck disable=SC2086

BNDL=bundler
DOT=.
ENV=env
EXT=sh
GIT=git
GLOBAL=global
LOG=log
MISC=misc
OS=linux

CMD_LOG=$SLASH"LOG"$DOT$EXT

DIR_BNDL=$SLASH$BNDL
DIR_ENV=$SLASH$ENV
DIR_GIT=$SLASH$GIT
DIR_GLOBAL=$SLASH$GLOBAL
DIR_LOG=$SLASH$LOG
DIR_MISC=$SLASH$MISC
DIR_OS=$SLASH$OS
DIR_TMPL=$SLASH$TMPL_NAME

source $DIR_DTS$DIR_BASE$DIR_BNDL$DIR_LOG$DIR_OS$CMD_LOG

log_enter $DIR_DTS$CMD_INIT

source $DIR_DTS$DIR_BASE$CMD_INIT
source $DIR_DTS$DIR_TEMPLATE$CMD_INIT

log_exit $DIR_DTS$CMD_INIT

