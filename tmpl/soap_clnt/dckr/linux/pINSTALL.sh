#!/bin/bash
# shellcheck disable=SC2086
# echo pINSTALL.sh [LOAD]

source settings.sh
source bLOG.sh


log_enter pINSTALL


source tENV.sh


export SRC=target/generated-sources/axis2
log_var SRC $SRC

export TRG=$DIR_SOAP_CLNT$DIR_SLASH$PROJ_NAME
log_var TRG $TRG

mkdir -p $TRG
shopt -s dotglob
cp -r $SRC $TRG

log_exit pINSTALL
