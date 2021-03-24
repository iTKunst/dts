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

	    if [ ! -d $PROJ_DIR ]; then
	      mkdir $PROJ_DIR
	    fi

	    if [ ! -f "$PROJ_ENV_FILE" ]; then
	      cp $DIR_TMPL_CURR$ENV_DIR$OS_DIR$DIR_SLASH"pENV.sample.sh" \
	         $PROJ_ENV_FILE
	    fi

  fi

	chmod +x $DIR_BIN/*.sh


	log_exit pINIT


	return 0
}


