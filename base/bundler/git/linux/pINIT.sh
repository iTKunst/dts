#!/bin/bash
# shellcheck disable=SC2086


# echo pINIT.sh [LOADED]

source ./$DIR_BNDL/git/linux/pINIT_GLBL.sh
source ./$DIR_BNDL/git/linux/pINIT_PROJ.sh
source ./$DIR_BNDL/git/linux/pINIT_SYS.sh
source ./$DIR_BNDL/git/linux/pINIT_TMPL.sh
source ./$DIR_BNDL/misc/linux/mSET_PATH.sh

pINIT () {

	log_enter pINIT


  export DIR_GLBL=$DIR_DTS/base/global
  export DIR_SYS=../system
  export DIR_TMPL=$DIR_DTS/tmpl/$TMPL_NAME

	pINIT_GLBL
	pINIT_SYS
  pINIT_TMPL
  pINIT_PROJ

	chmod +x ./bin/*.sh


	log_exit pINIT


	return 0
}


# echo pINIT.sh [UNLOADED]
