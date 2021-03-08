#!/bin/bash
# shellcheck disable=SC2086



pCLONE_REPO () {

	log_enter pCLONE_REPO


	FLDR=$1
	DIR=$2

	log_var FLDR $FLDR
	log_var DIR $DIR

	log_info Cloning $DIR

	export RES=0

  git config core.sparsecheckout true
  echo $FLDR/* >> .git/info/sparse-checkout

  git pull origin master

	RES=$?
	if [ $RES -ne 0 ]; then
		log_clone_err $GIT
		log_err Does it exist in the repo?
		exit
	fi

	log_exit pCLONE_REPO

	return
}
