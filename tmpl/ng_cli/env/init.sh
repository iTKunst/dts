#!/bin/bash
# shellcheck disable=SC2086


log_enter /$DIR_TMPL$ENV_DIR/init

cp $DIR_TMPL_CURR$ENV_DIR$OS_DIR/tENV.sh $DIR_BIN

if [ ! -d ./project ]; then
  mkdir project
fi

if [ ! -f ./project/pENV.sh ]; then
  cp $DIR_TMPL_CURR$ENV_DIR$OS_DIR/pENV.sample.sh ./project/pENV.sh
fi

log_exit /$DIR_TMPL$ENV_DIR/init