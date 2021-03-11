#!/bin/bash
# shellcheck disable=SC2086


pINIT_PROJ() {

	log_enter pINIT_PROJ

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

	log_exit pINIT_PROJ

	return 0
}
