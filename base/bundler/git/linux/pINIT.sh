#!/bin/bash
# shellcheck disable=SC2086


# echo pINIT.sh [LOADED]

source LOG.sh
source settings.sh
source $BNDL_DIR/git/linux/pINIT_PROJ.sh
source $BNDL_DIR/misc/linux/mSET_PATH.sh

pINIT () {

	log_enter pINIT


	if [ -z $TMPL_DIR ]; then
		log_invalid TMPL_DIR
		return 1
	fi
	log_var TMPL_DIR $TMPL_DIR

	if [ -d "$TMPL_DIR" ]; then

	    if [ ! -d "project" ]; then
	      mkdir project
	    fi

	    if [ ! -f "project/pENV.sh" ]; then
	      cp $TMPL_DIR/env/linux/pENV.sample.sh \
	         project/pENV.sh
	    fi

  fi

	chmod +x ./bin/*.sh


	log_exit pINIT


	return 0
}


# echo pINIT.sh [UNLOADED]
