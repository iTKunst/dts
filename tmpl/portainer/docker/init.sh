#!/bin/bash
# shellcheck disable=SC2086


log_enter $TMPL_DIR$DIR_DCKR$CMD_INIT

cp ./$DIR_TMPL$DCKR_DIR/linux/*.sh .$DIR_BIN

log_exit /$DIR_TMPL$DCKR_DIR/init
