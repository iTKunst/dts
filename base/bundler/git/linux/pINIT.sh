#!/bin/bash
# shellcheck disable=SC2086


# echo pINIT.sh [LOADED]

source LOG.sh
source settings.sh
source $BNDL_DIR/git/linux/pINIT_PROJ.sh
source $BNDL_DIR/misc/linux/mSET_PATH.sh

pINIT () {

	log_enter pINIT


	if [ ! -d "$GLBL_DIR" ]; then
		log_dir_err GLBL_DIR
		exit
	fi
	source $GLBL_DIR/init.sh

	if [ ! -d "$SYS_DIR" ]; then
		log_dir_err SYS_DIR
		exit
	fi
	source $SYS_DIR/init.sh

	if [ ! -d "$DIR_TMPL" ]; then
		log_dir_err $DIR_TMPL
		exit
	fi
	source $DIR_TMPL/init.sh

  pINIT_PROJ

	chmod +x ./bin/*.sh


	log_exit pINIT


	return 0
}


# echo pINIT.sh [UNLOADED]
