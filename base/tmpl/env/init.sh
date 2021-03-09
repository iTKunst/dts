#!/bin/bash
# shellcheck disable=SC2086


log_enter /$DIR_TMPL/env/init

cp ./$DIR_TMPL/env/linux/tENV.sh ./bin

if [ ! -d ./project ]; then
  mkdir project
fi

if [ ! -f ./project/pENV.sh ]; then
  cp ./$DIR_TMPL/env/linux/pENV.sample.sh ./project/pENV.sh
fi

log_exit /$DIR_TMPL/env/init