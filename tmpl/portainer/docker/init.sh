#!/bin/bash
# shellcheck disable=SC2086


log_enter /$TMPL_DIR$DCKR_DIR/init

cp ./$DIR_TMPL$DCKR_DIR/linux/*.sh ./bin

log_exit /$DIR_TMPL$DCKR_DIR/init
