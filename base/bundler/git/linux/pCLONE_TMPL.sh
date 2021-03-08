#!/bin/bash
# shellcheck disable=SC2086



pCLONE_TMPL () {

	log_enter pCLONE_TMPL


	if [ -z $DIR_DTS ]; then
		log_invalid DIR_DTS
		return 1
	fi
	log_var DIR_DTS $DIR_DTS

	if [ -z $TMPL_NAME ]; then
		log_invalid TMPL_NAME
		exit
	fi
	log_var TMPL_NAME $TMPL_NAME

  export RES=0

  export DIR_TMPL=$DIR_DTS$DIR_TMPL$TMPL_NAME
	log_var DIR_TMPL $DIR_TMPL

	if [ ! -d $DIR_TMPL ]; then
		pCLONE_REPO $TMPL_GIT $DIR_TMPL
		INIT=1
	else
		log_dup $TMPL_GIT
	fi

	log_exit pCLONE_TMPL

	return
}
