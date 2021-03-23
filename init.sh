#!/bin/bash
# shellcheck disable=SC2086

echo dts/init.sh [ENTER]


  export DIR_BIN=bin
  export DIR_ENV=dts/env
  export DIR_LOG=dts/log
  export FILE_INIT=/init.sh


  if [ ! -d $DIR_BIN ]; then
    mkdir $DIR_BIN
    echo create $DIR_BIN
  fi

  export CMD_LOG=$DIR_LOG$FILE_INIT
  echo CMD_LOG is $CMD_LOG [VAR]
  source $CMD_LOG

  export CMD_ENV=$DIR_ENV$FILE_INIT
  echo CMD_ENV is $CMD_ENV [VAR]
  source $CMD_ENV

  sleep 10

  export CMD_SET_PATH=$DIR_BIN$FILE_SET_PATH
  echo CMD_SET_PATH is $CMD_SET_PATH [VAR]
  source $CMD_SET_PATH

  export CMD_BASE=$DIR_BASE$FILE_INIT
  echo CMD_BASE is $CMD_BASE [VAR]
  source $CMD_BASE

  export UP=$DOT$DOT$DIR_SLASH
  export CMD_SYS=$UP$UP"system"$FILE_INIT
  echo CMD_SYS is $CMD_SYS [VAR]
  source $CMD_SYS

  export CMD_TMPL=$DIR_TMPL_CURR$FILE_INIT
  echo CMD_TMPL is $CMD_TMPL [VAR]
  source $CMD_TMPL


  source pINIT.sh
  pINIT

log_exit $DIR_DTS$FILE_INIT
