#!/bin/bash
# shellcheck disable=SC2086

BASE=base
BIN=bin
BNDL=bndl
DOT=.
ENV=env
EXT=sh
OS=linux
SLASH=/

CMD_INIT=$SLASH"init"$DOT$EXT
CMD_LOG=$SLASH"LOG"$DOT$EXT

BASE_DIR=$SLASH$BASE
BIN_DIR=$SLASH$BIN
BNDL_DIR=$SLASH$BNDL
ENV_DIR=$SLASH$ENV
OS_DIR=$SLASH$OS

source $DIR_DTS$BASE_DIR$BNDL_DIR$ENV_DIR$CMD_INIT
source .$BIN_DIR/bENV.sh
source $DIR_BNDL$LOG_DIR$OS_DIR$CMD_LOG

log_enter $DIR_DTS$CMD_INIT

source $DIR_BASE$CMD_INIT
source $DIR_TMPL_CURR$CMD_INIT
source $DIR_SYS$CMD_INIT

log_exit $DIR_DTS$CMD_INIT

