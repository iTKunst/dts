#!/bin/bash
# shellcheck disable=SC2086

 echo dts/init.sh [ENTER]

  source gENV.sh


  if [ ! -d $DIR_BIN ]; then
    mkdir $DIR_BIN
    echo create $DIR_BIN
  fi

  export CMD_BNDL=$DIR_BNDL$FILE_INIT
  echo CMD_BNDL is $CMD_BNDL [VAR]
  source $CMD_BNDL

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
