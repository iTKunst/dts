#!/bin/bash
# shellcheck disable=SC2086


# echo pINIT.sh [LOADED]

source LOG.sh
source settings.sh
source $DIR_BNDL$MISC_DIR$OS_DIR/mSET_PATH.sh

pINIT () {

	log_enter pINIT


	if [ -z $DIR_TMPL_CURR ]; then
		log_invalid DIR_TMPL_CURR
		return 1
	fi
	log_var DIR_TMPL_CURR $DIR_TMPL_CURR

	if [ -d "$DIR_TMPL_CURR" ]; then

	    if [ ! -d "project" ]; then
	      mkdir project
	    fi

	    if [ ! -f "project/pENV.sh" ]; then
	      cp $DIR_TMPL_CURR$ENV_DIR$OS_DIR/pENV.sample.sh \
	         project/pENV.sh
	    fi

  fi

	chmod +x $DIR_BIN/*.sh


	log_exit pINIT


	return 0
}


# echo pINIT.sh [UNLOADED]
