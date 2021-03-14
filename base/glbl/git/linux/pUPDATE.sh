#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh
source project/pENV.sh
source pINIT.sh

DEF_URI_DTS_GIT=https://github.com/iTKunst/dts
DEF_DIR_DTS=dts

log_load pUPDATE


pUPDATE() {

  log_enter pUPDATE

  if [ -z $DIR_DTS ]; then
    echo DIR_DTS may be set in settings.sh. [INFO]
    echo Setting to default value. [INFO]
    export DIR_DTS=$DEF_DIR_DTS
  fi
  log_var DIR_DTS $DIR_DTS


  cd $DIR_DTS
  git pull origin master
  cd ..

  source $DIR_DTS$DIR_SLASH$FILE_INIT
  source project/pENV.sh
  pINIT

  log_exit pUPDATE


  log_cmd "Please run pBUILD.sh to create the docker image"

  return 0
}

pUPDATE