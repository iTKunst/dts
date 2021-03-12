#!/bin/bash
# shellcheck disable=SC2086


# echo update.sh [LOAD]

BASE=base
BIN=bin
BUNDLER=bundler
DOT=.
INIT=init
SH=sh
SLASH=/
STAR=*
TEMPLATE=tmpl

DEF_URI_DTS_GIT=https://github.com/iTKunst/dts
DEF_DIR_DTS=dts

CMD_INIT=$SLASH$INIT$DOT$SH

DIR_BASE=$SLASH$BASE
DIR_BIN=$SLASH$BIN
DIR_BUNDLER=$SLASH$BUNDLER
DIR_TEMPLATE=$SLASH$TEMPLATE


update()
{

  if [ ! -f settings.sh ]; then
    echo settings.sh not found [FILE_ERR]
    return 1
  fi
  source settings.sh

  if [ -z "$DIR_DTS" ]; then
    echo DIR_DTS may be set in settings.sh. [INFO]
    echo Setting to default value. [INFO]
    export DIR_DTS=$DEF_DIR_DTS
  fi
  # echo DIR_DTS is $DIR_DTS [VAR]

  cd $DIR_DTS
  git pull origin master
  cd ..

  source $DIR_DTS$CMD_INIT
  source .$DIR_BIN/mSET_PATH.sh
  source bENV.sh
  source pINIT.sh

  pINIT

  
  return 0

}

update


# echo update.sh [UNLOAD]