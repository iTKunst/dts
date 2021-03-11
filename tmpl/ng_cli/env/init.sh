#!/bin/bash
# shellcheck disable=SC2086


log_enter /$DIR_TMPL/env/init

cp $TMPL_DIR$DIR_ENV$DIR_OS/pENV.sh .%DIR_BIN%

if [ ! -d ./project ]; then
  mkdir project
fi

if [ ! -f ./project/pENV_MOD.sh ]; then
  cp $TMPL_DIR$DIR_ENV$DIR_OS/pENV_MOD.sample.sh ./project/pENV_MOD.sh
fi

log_exit /$DIR_TMPL/env/init