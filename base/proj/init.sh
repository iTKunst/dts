#!/bin/bash
# shellcheck disable=SC2086


# ECHO init.sh [LOAD]


DEF_URI_DTS_GIT=https://github.com/iTKunst/dts
DEF_DIR_DTS=dts

init()
{

  if [ ! -f settings.sh ]; then
    ECHO settings.sh not found [FILE_ERR]
    return 1
  fi
  source settings.sh

  if [ -z "$DIR_DTS" ]; then
    ECHO DIR_DTS may be set in settings.sh. [INFO]
    ECHO Setting to default value. [INFO]
    export DIR_DTS=$DEF_DIR_DTS
  fi
  ECHO DIR_DTS is $DIR_DTS [VAR]

  if [ -d "$DIR_DTS" ]; then
    ECHO Already initialized[INFO]
    source ./bin/mSET_PATH.sh
    ECHO Run pUPDATE [CMD]
    return 0
  fi

  if [ -z "$URI_DTS_GIT" ]; then
    ECHO URI_DTS_GIT may be set in settings_uri.sh. [INFO]
    ECHO Setting to default value [INFO].
    export URI_DTS_GIT=$DEF_URI_DTS_GIT
  fi
  ECHO URI_DTS_GIT is $URI_DTS_GIT [VAR]

  if [ -z $TMPL_NAME ]; then
    ECHO TMPL_NAME [INVALID]
    ECHO TMPL_NAME must be set in settings.sh. [INFO]
	exit
  fi
  ECHO TMPL_NAME is $TMPL_NAME [VAR]

  export TMPL_FLDR="tmpl/"$TMPL_NAME"/*"
  ECHO TMPL_FLDR is $TMPL_FLDR [VAR]

  export DIR_BNDL=$DIR_DTS/base/bundler
  ECHO DIR_BNDL is $DIR_BNDL [VAR]

  mkdir -p $DIR_DTS
  cd $DIR_DTS

  git init
  git remote add origin -f $URI_DTS_GIT
  git config core.sparsecheckout true

  ECHO "base/*" >> .git/info/sparse-checkout
  ECHO $TMPL_FLDR >> .git/info/sparse-checkout

  git pull origin master

  if [ $?  -ne 0 ]; then
      ECHO !!!!!ERROR!!!!! Unable to clone DTS base [CLONE_ERR]
      return $?
  fi

  cd ..

  if [ ! -d bin ]; then
    mkdir bin
    ECHO create bin
  fi

  export DIR_BNDL=$DIR_DTS/base/bundler

  source $DIR_BNDL/init.sh
  source bin/mSET_PATH.sh
  source bENV.sh
  source pINIT.sh

  pINIT

  
  return 0

}

init


# ECHO init.sh [UNLOAD]