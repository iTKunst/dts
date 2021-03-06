#!/bin/bash
# shellcheck disable=SC2086


# echo init.sh [LOAD]


if [ ! -f settings.sh ]; then
  echo settings.sh not found [FILE_ERR]
  return 1
fi
source settings.sh

if [ -z "$DIR_BNDL" ]; then
  echo !!!!!ERROR!!!!! DIR_BNDL is invalid [INVALID]
  echo You must set it in ./settings.sh! [CMD]
  echo Default value is 'base_bundler' [INFO]
  return 1
fi
# echo DIR_BNDL is $DIR_BNDL [VAR]

init() {

  # echo init [ENTER]


  if [ -d $DIR_BNDL ]; then
    echo Already initialized[INFO]
    source ./bin/mSET_PATH.sh
    echo Run pUPDATE [CMD]
    return 0
  fi

  if [ ! -d bin ]; then
    mkdir bin
    # echo create bin
  fi


  if [ -z "$URI_TMPL_GIT_BASE" ]; then
    echo !!!!!ERROR!!!!! URI_TMPL_GIT_BASE is invalid [INVALID]
    echo You must set it in ./settings.sh! [CMD]
    echo Default value is https://github.com/itkunst [INFO]
    return 1
  fi
  # echo URI_TMPL_GIT_BASE is $URI_TMPL_GIT_BASE [VAR]

  REPO=$URI_TMPL_GIT_BASE/$BNDL_NAME;
  # echo REPO is $REPO [VAR]

  git clone $REPO $DIR_BNDL
  if [ $?  -ne 0 ]; then
      echo !!!!!ERROR!!!!! Unable to clone $DIR_BNDL [CLONE_ERR]
      return $?
  fi

  source ./$DIR_BNDL/log/linux/LOG.sh
  source ./$DIR_BNDL/init.sh
  source ./bin/mSET_PATH.sh
  source bENV.sh
  source pINIT.sh

  pINIT

  log_exit init
  
  return 0

}

init


# echo init.sh [UNLOAD]