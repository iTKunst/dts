#!/bin/bash
# shellcheck disable=SC2086
# echo pINSTALL.sh [LOAD]

source settings.sh
source bLOG.sh


log_enter pINSTALL


source tENV.sh


export TARGET=$SYS_DIR$SOAP_DIR/$PROJ_NAME
log_var TARGET $TARGET

export SOURCE=./target/generated-sources/axis2
log_var SOURCE $SOURCE

mkdir -p $TARGET
shopt -s dotglob
cp -r $SOURCE/* $TARGET

log_exit pINSTALL
