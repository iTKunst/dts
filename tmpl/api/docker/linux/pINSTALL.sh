#!/bin/bash
# shellcheck disable=SC2086
# echo pINSTALL.sh [LOAD]

source settings.sh
source LOG.sh


log_enter pINSTALL


source pENV.sh

log_var SYS_DIR $SYS_DIR
log_var TMPL_DIR $TMPL_DIR
log_var PROJ_NAME $PROJ_NAME
log_var SYS_NAME $SYS_NAME


export SOURCE=./$SYS_DIR/api/$PROJ_NAME
log_var SOURCE $SOURCE

export TARGET=code/
log_var TARGET $TARGET

mkdir -p $TARGET
cp -r $SOURCE/* $TARGET


export TARGET=code/
log_var TARGET $TARGET

export SOURCE=./$TMPL_DIR/mvn
log_var SOURCE $SOURCE

mkdir -p $TARGET
cp -r $SOURCE/* $TARGET


log_exit pINSTALL
