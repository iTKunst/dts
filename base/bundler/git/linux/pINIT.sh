#!/bin/bash
# shellcheck disable=SC2086


# echo pINIT.sh [LOADED]

source logs.sh
source settings.sh
source ./$DIR_BNDL/git/linux/pINIT_PROJ.sh
source ./$DIR_BNDL/misc/linux/mSET_PATH.sh

pINIT () {

	log_enter pINIT

  export DIR_GLBL=$DIR_DTS/base/global
  export DIR_SYS=../../system

	if [ ! -d "$DIR_GLBL" ]; then
		log_err_dir DIR_GLBL
		exit
	fi
	source $DIR_GLBL/init.sh

	if [ ! -d "$DIR_SYS" ]; then
		log_err_dir DIR_SYS
		exit
	fi
	source $DIR_SYS/init.sh

	if [ ! -d "$TMPL_FLDR" ]; then
		log_err_dir TMPL_FLDR
		exit
	fi
	source $TMPL_FLDR/init.sh

	if [ ! -d "$TMPL_FLDR" ]; then
		log_err_dir TMPL_FLDR
		exit
	fi
	source $TMPL_FLDR/init.sh

  pINIT_PROJ

	chmod +x ./bin/*.sh


	log_exit pINIT


	return 0
}


# echo pINIT.sh [UNLOADED]
