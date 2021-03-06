#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_load pUPDATE.sh



if [ -z $DIR_BNDL ]; then
	log_invalid DIR_BNDL
	exit 1
fi
log_var DIR_BNDL $DIR_BNDL

source LOG.sh
source pINIT.sh
source pSET_TRACE.sh
source pUPDATE_REPO.sh
source pUPDATE_SUBMODULE.sh


pUPDATE() {

	log_enter pUPDATE

  log_var DIR_BNDL $DIR_BNDL
	updateRepo $DIR_BNDL
	log_var RES $J
	if [ $? -ne 0 ]; then
		return $?
	fi

  log_var DIR_GLBL $DIR_GLBL
	updateRepo $DIR_GLBL
	log_var RES $J
	if [ $? -ne 0 ]; then
		return $?
	fi

  log_var DIR_SYS $DIR_SYS
	updateRepo $DIR_SYS
	log_var RES $J
	if [ $? -ne 0 ]; then
		return $?
	fi

  log_var DIR_TMPL $DIR_TMPL
	updateRepo $DIR_TMPL
	log_var RES $J
	if [ $? -ne 0 ]; then
		return $?
	fi

	pINIT

	log_exit pUPDATE


	log_cmd "Please run pBUILD.sh to create the docker image"

  return 0
}

pUPDATE