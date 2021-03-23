#!/bin/bash
# shellcheck disable=SC2086

 echo dts/init.sh [ENTER]

  source gENV.sh


   # FILES

  export DTS_DIR=dts
  # echo DTS_DIR is DTS_DIR [VAR]

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

  export DIR_SYS=$DIR_BASE$SYS_DIR
  # echo DIR_SYS is $DIR_SYS [VAR]

  export DIR_TMPL=DIR_BASE$TMPL_DIR
  # echo DIR_TMPL is $DIR_TMPL [VAR]

  export FILES=$OS_DIR$DIR_SLASH$STAR$DOT$EXT
  # echo FILES is $FILES [VAR]


  if [ -z "$PROJ_MODE" ]; then
    echo PROJ_MODE may be set it in settings.sh. [CMD]
    echo Setting to default. [INFO]
    export PROJ_MODE=DEF_PROJ_MODE
  fi
  # echo PROJ_MODE is $PROJ_MODE

  if [ -z $URI_DTS_GIT ]; then
    echo URI_DTS_GIT may be set it in settings_uri.sh. [INFO]
    echo Setting to default. [INFO]
    URI_DTS_GIT=$DEF_URI_DTS_GIT
  fi
  # echo URI_DTS_GIT is $URI_DTS_GIT

  if [ -z "$PROJ_NAME" ]; then
    echo PROJ_NAME [INVALID]
    echo Must be set it in settings.sh! [CMD]
    return 1
  fi
  # echo PROJ_NAME is $PROJ_NAME

  if [ -z "$SYS_NAME" ]; then
    echo SYS_NAME [INVALID]
    echo Must set it in settings.sh! [CMD]
    return 1
  fi
  # echo SYS_NAME is $SYS_NAME

  if [ -z $TMPL_NAME ]; then
    echo TMPL_NAME [INVALID]
    echo You must set it in settings.sh! [CMD]
    return 1
  fi
  # echo TMPL_NAME is $TMPL_NAME

  export DIR_TMPL_CURR=$DTS_DIR$TMPL_DIR$DIR_SLASH$TMPL_NAME
  # echo DIR_TMPL_CURR is $DIR_TMPL_CURR [VAR]

  # ECHO DIR_DTS is $DIR_DTS [VAR]
  # ECHO DIR_SLASH is $DIR_SLASH [VAR]
  # ECHO FILE_INIT is $FILE_INIT [VAR]

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
