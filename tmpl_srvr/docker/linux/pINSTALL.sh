#!/bin/bash
# shellcheck disable=SC2086
# echo pINSTALL.sh [LOAD]

source settings.sh
source LOG.sh


log_enter pINSTALL


source pENV.sh

log_var DIR_SYS $DIR_SYS
log_var PROJ_NAME $PROJ_NAME
log_var SYS_NAME $SYS_NAME

export SOURCE=./$DIR_SYS/soap/$PROJ_NAME
export TARGET=code/src-gen

log_var TARGET $TARGET
log_var SOURCE $SOURCE

mkdir -p $TARGET
shopt -s dotglob
cp -r $SOURCE/* $TARGET


export SOURCE=./$DIR_SYS/api/$PROJ_NAME
export TARGET=code/src-gen/swag

mkdir -p $TARGET
shopt -s dotglob
cp -r $SOURCE/* $TARGET

log_var TARGET $TARGET
log_var SOURCE $SOURCE

log_exit pINSTALL
