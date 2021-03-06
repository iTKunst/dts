#!/bin/bash
# shellcheck disable=SC2086
# echo pINSTALL.sh [LOAD]

source settings.sh
source LOG.sh


log_enter pINSTALL


source pENV.sh

log_var DIR_SYS $DIR_SYS
log_var DIR_TMPL $DIR_TMPL
log_var PROJ_NAME $PROJ_NAME
log_var SYS_NAME $SYS_NAME


export SOURCE=./$DIR_SYS/api/$PROJ_NAME
log_var SOURCE $SOURCE

export TARGET=code/
log_var TARGET $TARGET

mkdir -p $TARGET
cp -r $SOURCE/* $TARGET


export TARGET=code/
log_var TARGET $TARGET

export SOURCE=./$DIR_TMPL/mvn
log_var SOURCE $SOURCE

mkdir -p $TARGET
cp -r $SOURCE/* $TARGET


log_exit pINSTALL
