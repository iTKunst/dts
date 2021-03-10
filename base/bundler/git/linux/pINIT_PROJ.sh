#!/bin/bash
# shellcheck disable=SC2086


pINIT_PROJ() {

	log_enter pINIT_PROJ

	if [ -z $TMPL_FLDR ]; then
		log_invalid TMPL_FLDR
		return 1
	fi
	log_var TMPL_FLDR $TMPL_FLDR

	if [ -d "$TMPL_FLDR" ]; then

	    if [ ! -d "project" ]; then
	      mkdir project
	    fi

	    if [ ! -f "project/pENV.sh" ]; then
	      cp $TMPL_FLDR/env/linux/pENV.sample.sh \
	         project/pENV.sh
	    fi

  fi

	log_exit pINIT_PROJ

	return 0
}
