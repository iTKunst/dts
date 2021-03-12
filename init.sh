#!/bin/bash
# shellcheck disable=SC2086

export BASE=base
export BIN=bin
export BNDL=bndl
export DOT=.
export ENV=env
export EXT=sh
export OS=linux
export SLASH=/

export CMD_INIT=$SLASH"init"$DOT$EXT
export CMD_LOG=$SLASH"LOG"$DOT$EXT

export BASE_DIR=$SLASH$BASE
export BIN_DIR=$BIN
export BNDL_DIR=$SLASH$BNDL
export ENV_DIR=$SLASH$ENV
export OS_DIR=$SLASH$OS

export DIR_ENV=$DIR_DTS$BASE_DIR$BNDL_DIR$ENV_DIR
echo DIR_ENV is $DIR_ENV [VAR]

echo BIN_DIR is BIN_DIR [VAR]
if [ ! -d $BIN_DIR ]; then
  mkdir $BIN_DIR
  echo create $BIN_DIR
fi

source $DIR_ENV$CMD_INIT
source $BIN_DIR/bENV.sh
source $DIR_BNDL$LOG_DIR$OS_DIR$CMD_LOG

log_enter $DIR_DTS$CMD_INIT

source $DIR_BASE$CMD_INIT
source $DIR_TMPL_CURR$CMD_INIT
source $DIR_SYS$CMD_INIT

source $DIR_BIN$DIR_SLASHmSET_PATH.sh
source pINIT.sh
pINIT

log_exit $DIR_DTS$CMD_INIT

