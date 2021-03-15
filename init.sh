#!/bin/bash
# shellcheck disable=SC2086

 echo dts/init.sh [ENTER]


  # TOKENS
  export BCK_SLASH=\\
  export COLON=:
  export DOT=.
  export FOR_SLASH=/
  export STAR=*

  # NAMES
  export BASE=base
  export BIN=bin
  export BNDL=bndl
  export COM=com
  export DTS=dts
  export ENV=env
  export EXT=sh
  export GIT=git
  export GIT_HUB=github
  export GLBL=glbl
  export HTTPS=https
  export INFO=info
  export INIT=init
  export ITK=iTKunst
  export LOG=log
  export MISC=misc
  export OS=linux
  export PROJ=proj
  export SETTINGS=settings
  export SYS=sys
  export TMPL=tmpl

  # DIRS
  export DIR_SLASH=$FOR_SLASH

  export BASE_DIR=$DIR_SLASH$BASE
  export BIN_DIR=$BIN
  export BNDL_DIR=$DIR_SLASH$BNDL
  export ENV_DIR=$DIR_SLASH$ENV
  export GLBL_DIR=$DIR_SLASH$GLBL
  export GIT_DIR=$DIR_SLASH$GIT
  export LOG_DIR=$DIR_SLASH$LOG
  export OS_DIR=$DIR_SLASH$OS
  export MISC_DIR=$DIR_SLASH$MISC
  export PROJ_DIR=$DIR_SLASH$PROJ
  export SYS_DIR=$DIR_SLASH$SYS
  export TMPL_DIR=$DIR_SLASH$TMPL

  # FILES
  export FILE_INIT=$INIT$DOT$EXT
  export FILE_LOG=$SLASH"LOG"$DOT$EXT
  export FILE_SETTINGS=$SETTINGS$DOT$EXT

  export DIR_BASE=$DIR_DTS$BASE_DIR
  # echo DIR_BASE is $DIR_BASE [VAR]

  export DIR_BIN=$BIN_DIR
  # echo DIR_BIN is $DIR_BIN [VAR]

  export DIR_BNDL=$DIR_BASE$BNDL_DIR
  # echo DIR_BNDL is $DIR_BNDL [VAR]

  export DIR_ENV=$DIR_BNDL$ENV_DIR
  # echo DIR_ENV is $DIR_ENV [VAR]

  export DIR_GLBL=$DIR_BASE$GLBL_DIR
  # echo DIR_GLBL is $DIR_GLBL [VAR]

  export DIR_PROJ=$DIR_BASE$PROJ_DIR
  # echo DIR_PROJ is $DIR_PROJ [VAR]

  export DIR_SYS=$DIR_BASE$PROJ_DIR
  # echo DIR_SYS is $DIR_SYS [VAR]

  export DIR_TMPL=$DIR_DTS$TMPL_DIR
  # echo DIR_TMPL is $DIR_TMPL [VAR]

  export FILES=$OS_DIR$DIR_SLASH$STAR$DOT$EXT
  # echo FILES is $FILES [VAR]

  if [ -z $TMPL_NAME ]; then
   # echo TMPL_NAME [INVALID]
   # echo TMPL_NAME must be set in settings.sh. [INFO]
	  exit
  fi
  # echo TMPL_NAME is $TMPL_NAME [VAR]

  export DIR_TMPL_CURR=$DIR_TMPL$DIR_SLASH$TMPL_NAME
  # echo DIR_TMPL_CURR is $DIR_TMPL_CURR [VAR]


  if [ -z $TMPL_NAME ]; then
   # echo TMPL_NAME [INVALID]
   # echo TMPL_NAME must be set in settings.sh. [INFO]
	  exit
  fi
  # echo TMPL_NAME is $TMPL_NAME [VAR]

  export TMPL_CURR_DIR=$TMPL_DIR$DIR_SLASH$TMPL_NAME
  # echo TMPL_CURR_DIR is $TMPL_CURR_DIR [VAR]

  cd $DIR_DTS

  if [ -d "$BASE_DIR" ]; then
    echo git pull origin master
    git pull origin master
  else
    echo git sparse-checkout set \
    git sparse-checkout set \
      $BASE_DIR$DIR_SLASH$STAR \
      $BASE_DIR$BNDL_DIR \
      $BASE_DIR$GLBL_DIR \
      $BASE_DIR$PROJ_DIR \
      $TMPL_CURR_DIR
  fi

  cd ..

  sleep 10

  if [ ! -d $DIR_BIN ]; then
    mkdir $DIR_BIN
   # echo create $DIR_BIN
  fi

  source $DIR_ENV$DIR_SLASH$FILE_INIT
  source $DIR_BNDL$LOG_DIR$OS_DIR$DIR_SLASH$FILE_LOG

  log_enter $DIR_DTS$DIR_SLASH$FILE_INIT

  source $DIR_BASE$DIR_SLASH$FILE_INIT
  source $DIR_SYS$DIR_SLASH$FILE_INIT

  source $DIR_BIN$DIR_SLASH"mSET_PATH.sh"
  source pINIT.sh
  pINIT

  log_exit $DIR_DTS$DIR_SLASH$FILE_INIT

echo dts/init.sh [EXIT]