#!/bin/bash
# shellcheck disable=SC2086


# echo init.sh [LOAD]


DEF_URI_DTS_GIT=https://github.com/iTKunst/dts
DEF_DIR_DTS=dts

if [ ! -f settings.sh ]; then
  echo settings.sh not found [FILE_ERR]
  return 1
fi
source settings.sh


clone_dts()
{
  echo clone_dts [ENTER]

  if [ -z "$DIR_DTS" ]; then
    echo DIR_DTS may be set in settings.sh. [INFO]
    echo Setting to default value. [INFO]
    export DIR_DTS=$DEF_DIR_DTS
  fi
  echo DIR_DTS is $DIR_DTS [VAR]

  mkdir -p $DIR_DTS
  cd $DIR_DTS

  git init

  if [ -z "$URI_DTS_GIT" ]; then
    echo URI_DTS_GIT may be set in settings_uri.sh. [INFO]
    echo Setting to default value [INFO].
    export URI_DTS_GIT=$DEF_URI_DTS_GIT
  fi
  echo URI_DTS_GIT is $URI_DTS_GIT [VAR]

  git remote add origin -f $URI_DTS_GIT
  # git remote add origin -f https://github.com/iTKunst/dts

  git config core.sparsecheckout true

  echo "base/*" >> .git/info/sparse-checkout
  # echo "base/*" >> .git/info/sparse-checkout

	if [ -z $TMPL_NAME ]; then
		log_invalid TMPL_NAME
		exit
	fi
	log_var TMPL_NAME $TMPL_NAME

  export TMPL_FLDR="tmpl/"$TMPL_NAME"/*"
	log_var TMPL_FLDR $TMPL_FLDR

  echo $TMPL_FLDR >> .git/info/sparse-checkout
  # echo "tmpl/smtp/*" >> .git/info/sparse-checkout

  git pull origin master

  if [ $?  -ne 0 ]; then
      echo !!!!!ERROR!!!!! Unable to clone DTS base [CLONE_ERR]
      return $?
  fi

  cd ..
}



init() {

  echo init [ENTER]


  if [ -d dts ]; then
    echo Already initialized[INFO]
    source ./bin/mSET_PATH.sh
    echo Run pUPDATE [CMD]
    return 0
  fi

  if [ ! -d bin ]; then
    mkdir bin
    # echo create bin
  fi


  clone_dts

  export DIR_BNDL=$DIR_DTS/base/bundler
  export DIR_GLBL=$DIR_DTS/base/global
  export DIR_SYS=../system

  source $DIR_BNDL/log/linux/LOG.sh
  source $DIR_BNDL/init.sh
  source bin/mSET_PATH.sh
  source bENV.sh
  source pINIT.sh

  pINIT

  log_exit init
  
  return 0

}

init


# echo init.sh [UNLOAD]