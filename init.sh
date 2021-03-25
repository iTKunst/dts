#!/bin/bash
# shellcheck disable=SC2086

echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%                                                                %%%%%%%%%%%%"
echo "%%%%%%%%%                 Docker Templating System (DTS)                     %%%%%%%%%%"
echo "%%%%%%%%%                            init [ENTER]                            %%%%%%%%%%"
echo "%%%%%%%%%%%                                                                %%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

  export ENV_DIR=/env
  export CMD_DIR=/cmd

  export DIR_BIN=bin
  export DIR_BOOT=dts/boot
  export DIR_PROJ=proj
  export DIR_SYS=sys
  export DIR_TMPL=tmpl

  export FILE_ENV=gENV.sh
  export FILE_INIT=/init.sh
  export FILE_LOG=bLOG.sh
  export FILE_PATH=/bPATH.sh
  export FILES=/linux/*.sh


  echo DIR_BIN is $DIR_BIN [VAR]
  if [ ! -d $DIR_BIN ]; then
    mkdir -p $DIR_BIN
    echo create $DIR_BIN
  fi

  echo DIR_PROJ is $DIR_PROJ [VAR]
  if [ ! -d $DIR_PROJ ]; then
    mkdir -p $DIR_PROJ
    echo create $DIR_PROJ
  fi

  echo DIR_SYS is $DIR_SYS [VAR]
  if [ ! -d $DIR_SYS ]; then
    mkdir -p $DIR_SYS
    echo create $DIR_SYS
  fi

  echo DIR_TMPL is $DIR_TMPL [VAR]
  if [ ! -d $DIR_TMPL ]; then
    mkdir -p $DIR_TMPL
    echo create $DIR_TMPL
  fi

  export CMD_BOOT=$DIR_BOOT$FILE_INIT
  echo CMD_BOOT is $CMD_BOOT [VAR]
  source $CMD_BOOT

  export CMD_BASE=$DIR_BASE$FILE_INIT
  echo CMD_BASE is $CMD_BASE [VAR]
  source $CMD_BASE

  export CMD_SYS=$DIR_SYS$FILE_INIT
  echo CMD_SYS is $CMD_SYS [VAR]
  source $CMD_SYS

  export CMD_TMPL=$DIR_TMPL_CURR$FILE_INIT
  echo CMD_TMPL is $CMD_TMPL [VAR]
  source $CMD_TMPL


  source pINIT.sh
  pINIT

  rm  nul


echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%                                                                %%%%%%%%%%%%"
echo "%%%%%%%%%                 Docker Templating System (DTS)                     %%%%%%%%%%"
echo "%%%%%%%%%                            init [EXIT]                             %%%%%%%%%%"
echo "%%%%%%%%%%%                                                                %%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
