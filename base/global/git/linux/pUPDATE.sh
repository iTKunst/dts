#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_load pUPDATE.sh



if [ -z $DIR_DTS ]; then
	log_invalid DIR_DTS
	exit 1
fi

source LOG.sh
source pINIT.sh
source pSET_TRACE.sh
source pUPDATE_REPO.sh
source pUPDATE_SUBMODULE.sh


pUPDATE() {

	log_enter pUPDATE

  if [ -z $DIR_DTS ]; then
    log_invalid DIR_DTS
    exit 1
  fi
  log_var DIR_DTS $DIR_DTS

	updateRepo $DIR_BNDL
	log_var RES $J
	if [ $? -ne 0 ]; then
		return $?
	fi

#	pINIT

	log_exit pUPDATE


	log_cmd "Please run pBUILD.sh to create the docker image"

  return 0
}

pUPDATE