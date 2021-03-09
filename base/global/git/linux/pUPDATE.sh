#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_load pUPDATE


export DIR_BNDL=$DIR_DTS/base/bundler
echo DIR_BNDL is $DIR_BNDL [VAR]


source LOG.sh
source pINIT.sh
source pSET_TRACE.sh


pUPDATE() {

	log_enter pUPDATE


  if [ -z $DIR_DTS ]; then
    log_invalid DIR_DTS
    exit 1
  fi
  log_var DIR_DTS $DIR_DTS

	cd $DIR_DTS
  git pull origin master
  cd ..

	pINIT

	log_exit pUPDATE


	log_cmd "Please run pBUILD.sh to create the docker image"

  return 0
}

pUPDATE