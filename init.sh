#!/bin/bash
# shellcheck disable=SC2086

clear

echo ***************************************************************************************
echo ***************************************************************************************
echo ***********                                                                ************
echo *********              Docker Templating System (DTS) [ENTER]                **********
echo ***********                                                                ************
echo ***************************************************************************************
echo ***************************************************************************************


  export DIR_BIN=bin
  export DIR_ENV=dts/env
  export DIR_BOOT=dts/boot
  export FILE_ENV=gENV.sh
  export FILE_INIT=/init.sh
  export FILE_LOG=bLOG.sh
  export FILE_PATH=/bPATH.sh
  export FILES=/linux/*.sh


  if [ ! -d $DIR_BIN ]; then
    mkdir $DIR_BIN
    echo create $DIR_BIN
  fi

  export CMD_BOOT=$DIR_BOOT$FILE_INIT
  echo CMD_BOOT is $CMD_BOOT [VAR]
  source $CMD_BOOT

  export CMD_ENV=$DIR_ENV$FILE_INIT
  echo CMD_ENV is $CMD_ENV [VAR]
  source $CMD_ENV

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

echo ***************************************************************************************
echo ***************************************************************************************
echo ***********                                                                ************
echo *********              Docker Templating System (DTS) [EXIT]                 **********
echo ***********                                                                ************
echo ***************************************************************************************
echo ***************************************************************************************
