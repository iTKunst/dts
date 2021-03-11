#!/bin/bash
# shellcheck disable=SC2086


log_enter /$DIR_TMPL/env/init

cp $DIR_TMPL_CURR$ENV_DIR$DIR_OS/tENV.sh .$DIR_BIN

if [ ! -d ./project ]; then
  mkdir project
fi

if [ ! -f ./project/pENV_MOD.sh ]; then
  cp $DIR_TMPL_CURR$ENV_DIR$DIR_OS/pENV_MOD.sample.sh ./project/pENV_MOD.sh
fi

log_exit /$DIR_TMPL/env/init