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

export DIR_SLASH=$SLASH

export BASE_DIR=$DIR_SLASH$BASE
export BIN_DIR=$BIN
export BNDL_DIR=$DIR_SLASH$BNDL
export ENV_DIR=$DIR_SLASH$ENV
export OS_DIR=$DIR_SLASH$OS

export DIR_ENV=$DIR_DTS$BASE_DIR$BNDL_DIR$ENV_DIR
# echo DIR_ENV is $DIR_ENV [VAR]

export DIR_BIN=$BIN_DIR
# echo DIR_BIN is $DIR_BIN [VAR]
if [ ! -d $DIR_BIN ]; then
  mkdir $DIR_BIN
  echo create $DIR_BIN
fi

source $DIR_ENV$CMD_INIT
source $DIR_BIN/bENV.sh
source $DIR_BNDL$LOG_DIR$OS_DIR$CMD_LOG

log_enter $DIR_DTS$CMD_INIT

source $DIR_BASE$CMD_INIT
source $DIR_TMPL_CURR$CMD_INIT
source $DIR_SYS$CMD_INIT

source $DIR_BIN$DIR_SLASH"mSET_PATH".sh
source pINIT.sh
pINIT

log_exit $DIR_DTS$CMD_INIT

