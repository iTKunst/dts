#!/bin/bash
# shellcheck disable=SC2086
# echo pINSTALL.sh [LOAD]

source settings.sh
source LOG.sh


log_enter pINSTALL


source $TMPL_ENV_FILE_FILE

log_var SYS_DIR $SYS_DIR
log_var TMPL_DIR $TMPL_DIR
log_var PROJ_NAME $PROJ_NAME
log_var SYS_NAME $SYS_NAME


export SOURCE=./$SYS_DIR/api/$PROJ_NAME
log_var SOURCE $SOURCE

export TARGET=code/src-gen/swag
log_var TARGET $TARGET

mkdir -p $TARGET
cp -r $SOURCE/* $TARGET


export TARGET=code
log_var TARGET $TARGET

export SOURCE=.$DIR_TMPL/mvn
log_var SOURCE $SOURCE

if [ ! -d $TARGET ]; then
  mkdir $TARGET
fi

if [ ! -f $TARGET/pom.xml ]; then
  cp $SOURCE/pom.sample.xml $TARGET/pom.xml
fi


log_exit pINSTALL
