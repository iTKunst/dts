#!/bin/bash
# shellcheck disable=SC2086


log_enter /$DIR_TMPL/env/init

cp $TMPL_DIR$DIR_ENV$DIR_OS/tENV.sh .$DIR_BIN

log_exit /$DIR_TMPL/env/init