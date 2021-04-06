#!/bin/bash
# shellcheck disable=SC2086
# echo pINSTALL.sh [LOAD]

source settings.sh
source bLOG.sh


log_enter pINSTALL


source tENV.sh


SRC=$DIR_SOAP_CLNT$DIR_SLASH$PROJ_NAME
log_var SRC $SRC

TRG=$CODE$SRC_GEN_DIR
log_var TRG $TRG


mkdir -p $TRG
shopt -s dotglob
cp -r $SRC/* $TRG


log_exit pINSTALL
