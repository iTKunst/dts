#!/bin/bash
# shellcheck disable=SC2086
# echo pINSTALL.sh [LOAD]

source settings.sh
source bLOG.sh


log_enter pINSTALL


source tENV.sh

log_var SYS_DIR $SYS_DIR
log_var PROJ_NAME $PROJ_NAME
log_var SYS_NAME $SYS_NAME

SRC=target
log_var SRC $SRC

TRG=../$SYS_NAME$SPLIT$SYS_DIR/api/$PROJ_NAME/
log_var TRG $TRG


mkdir -p $TRG
shopt -s dotglob
cp -r $SRC/* $TRG


log_exit pINSTALL
