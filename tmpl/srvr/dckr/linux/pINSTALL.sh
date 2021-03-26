#!/bin/bash
# shellcheck disable=SC2086
# echo pINSTALL.sh [LOAD]

source settings.sh
source bLOG.sh


log_enter pINSTALL


source tENV.sh


TRG=$CODE$SRC_GEN_DIR
log_var TRG $TRG

export SRC=$DIR_SYS$SOAP_DIR$DIR_SLASH$PROJ_NAME$DIR_SLASH$CLNT
log_var SRC $SRC

mkdir -p $TRG
shopt -s dotglob
cp -r $SRC/* $TRG

TRG=code/src-gen/swag
log_var TRG $TRG

SRC=./$SYS_DIR/api/$PROJ_NAME
log_var SRC $SRC

mkdir -p $TARGET
shopt -s dotglob
cp -r $SRC/* $TRG

log_exit pINSTALL
