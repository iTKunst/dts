#!/bin/bash
# shellcheck disable=SC2086


log_enter /$DIR_TMPL/docker$CMD_INIT

cp $DIR_TMPL_CURR$DCKR_DIR$FILES $DIR_BIN

log_exit /$DIR_TMPL/docker$CMD_INIT
