#!/bin/bash
# shellcheck disable=SC2086


# echo pINIT.sh [LOADED]

source LOG.sh
source settings.sh
source ./$DIR_BNDL/git/linux/pINIT_PROJ.sh
source ./$DIR_BNDL/misc/linux/mSET_PATH.sh

pINIT () {

	log_enter pINIT

  export DIR_GLBL=$DIR_DTS/base/global
  export DIR_SYS=../../system
  export DIR_TMPL=.$DIR_DTS/tmpl/$TMPL_NAME

	if [ ! -d "$DIR_GLBL" ]; then
		log_dir_err DIR_GLBL
		exit
	fi
	source $DIR_GLBL/init.sh

	if [ ! -d "$DIR_SYS" ]; then
		log_dir_err DIR_SYS
		exit
	fi
	source $DIR_SYS/init.sh

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
