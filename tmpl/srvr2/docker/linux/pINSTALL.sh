#!/bin/bash
# shellcheck disable=SC2086
# echo pINSTALL.sh [LOAD]

source settings.sh
source LOG.sh


log_enter pINSTALL


source pENV.sh

log_var DIR_SYS $DIR_SYS
log_var TEMPLATE_DIR $TEMPLATE_DIR
log_var PROJ_NAME $PROJ_NAME
log_var SYS_NAME $SYS_NAME


export SOURCE=./$DIR_SYS/api/$PROJ_NAME
log_var SOURCE $SOURCE

export TARGET=code/src-gen/swag
log_var TARGET $TARGET

mkdir -p $TARGET
cp -r $SOURCE/* $TARGET


export TARGET=code
log_var TARGET $TARGET

export SOURCE=./$TEMPLATE_DIR/mvn
log_var SOURCE $SOURCE

if [ ! -d $TARGET ]; then
  mkdir $TARGET
fi

if [ ! -f $TARGET/pom.xml ]; then
  cp $SOURCE/pom.sample.xml $TARGET/pom.xml
fi


log_exit pINSTALL
