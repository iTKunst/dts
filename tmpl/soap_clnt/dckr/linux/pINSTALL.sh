#!/bin/bash
# shellcheck disable=SC2086
# echo pINSTALL.sh [LOAD]

source settings.sh
source bLOG.sh


log_enter pINSTALL


source tENV.sh


export TRG=$DIR_SYS$SOAP_DIR$DIR_SLASH$PROJ_NAME$DIR_SLASH$CLNT$DIR_SLASH$STAR
log_var TRG $TRG

export SRC=target/generated-sources/axis2
log_var SRC $SRC

mkdir -p $TRG
shopt -s dotglob
cp -r $SRC $TRG

log_exit pINSTALL
