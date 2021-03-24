#!/bin/bash
# shellcheck disable=SC2086


# echo pINIT.sh [LOADED]


pINIT () {

	log_enter pINIT


	if [ -z $DIR_TMPL_CURR ]; then
		log_invalid DIR_TMPL_CURR
		return 1
	fi
	log_var DIR_TMPL_CURR $DIR_TMPL_CURR

	if [ -d "$DIR_TMPL_CURR" ]; then

      log_var PROJ $PROJ

	    if [ ! -d $PROJ ]; then
	      mkdir $PROJ
	    fi

      log_var PROJ_ENV_FILE $PROJ_ENV_FILE

	    if [ ! -f $PROJ_ENV_FILE ]; then

	      SRC=$DIR_TMPL_CURR$ENV_DIR$OS_DIR$DIR_SLASH"pENV.sample.sh"
	      log_var SRC $SRC

	      TRG=$PROJ_ENV_FILE
	      log_var TRG $TRG

	      cp $SRC $TRG
	    fi

  fi

	chmod +x $DIR_BIN/*.sh


	log_exit pINIT


	return 0
}


