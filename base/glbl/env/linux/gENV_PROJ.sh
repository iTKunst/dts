#!/bin/bash
# shellcheck disable=SC2086

echo gENV_PROJ [ENTER]

  source settings.sh
  source gENV_DEF.sh
  source gENV_DIRS.sh
  source gENV_NAMES.sh
  source gENV_WEB.sh

  export DIR_CERT=$USR_DIR$LOCAL_DIR$SHARE_DIR$CA_CERT_DIR
  export FILE_DCKR=$DIR_TMPL_CURR$DCKR_DIR$FOR_SLASH$DCKR_FILE


  if [ -z "$PROJ_MODE" ]; then
    echo PROJ_MODE may be set it in settings.sh. [CMD]
    echo Setting to default. [INFO]
    export PROJ_MODE=MODE
  fi
  echo PROJ_MODE is $PROJ_MODE


  if [ -z $URI_DTS_GIT ]; then
    echo URI_DTS_GIT may be set it in settings_uri.sh. [INFO]
    echo Setting to default. [INFO]
    URI_DTS_GIT=$DEF_URI_DTS_GIT
  fi
  echo URI_DTS_GIT is $URI_DTS_GIT


  if [ -z "$PROJ_NAME" ]; then
    echo PROJ_NAME [INVALID]
    echo Must be set it in settings.sh! [CMD]
    return 1
  fi
  echo PROJ_NAME is $PROJ_NAME


  if [ -z "$SYS_NAME" ]; then
    echo SYS_NAME [INVALID]
    echo Must set it in settings.sh! [CMD]
    return 1
  fi
  echo SYS_NAME is $SYS_NAME


  if [ -z $TMPL_NAME ]; then
    echo TMPL_NAME [INVALID]
    echo You must set it in settings.sh! [CMD]
    return 1
  fi
  echo TMPL_NAME is $TMPL_NAME

  export DIR_BASE=$DIR_DTS$BASE_DIR
  echo DIR_BASE is $DIR_BASE

  export DIR_BIN=$BIN_DIR
  echo DIR_BIN is $DIR_BIN

  export DIR_BNDL=$DIR_BASE$BNDL_DIR
  echo DIR_BNDL is $DIR_BNDL

  echo GLBL_DIR is $GLBL_DIR
  export DIR_GLBL=$DIR_BASE$GLBL_DIR
  echo DIR_GLBL is $DIR_GLBL

  export DIR_SYS=$UP$UP$SYS
  echo DIR_SYS is $DIR_SYS

  export DIR_TMPL=$DIR_DTS$TMPL_DIR
  echo DIR_TMPL is $DIR_TMPL

  export DIR_TMPL_CURR=$DIR_TMPL$TMPL_CURR_DIR
  echo DIR_TMPL_CURR is $DIR_TMPL_CURR

  export CMD_INIT=$SLASH$INIT$DOT$EXT
  echo CMD_INIT is $CMD_INIT

   echo bENV [EXIT]

return 0