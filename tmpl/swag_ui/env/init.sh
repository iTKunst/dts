#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_TMPL_CURR$ENV_DIR$FILE_INIT

cp $DIR_TMPL_CURR$ENV_DIR$OS_DIR/tENV.sh $DIR_BIN

log_exit /$DIR_TMPL$ENV_DIR$FILE_INIT