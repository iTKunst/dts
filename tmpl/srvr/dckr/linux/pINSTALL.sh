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

export SOURCE=./$SYS_DIR/soap/$PROJ_NAME
export TARGET=code/src-gen
log_var TARGET $TARGET
log_var SOURCE $SOURCE

mkdir -p $TARGET
shopt -s dotglob
cp -r $SOURCE/* $TARGET


export SOURCE=./$SYS_DIR/api/$PROJ_NAME
export TARGET=code/src-gen/swag

mkdir -p $TARGET
shopt -s dotglob
cp -r $SOURCE/* $TARGET

log_var TARGET $TARGET
log_var SOURCE $SOURCE

log_exit pINSTALL
