#!/bin/bash
# shellcheck disable=SC2086


log_enter /$DIR_TMPL$DCKR_DIR/init

cp $TMPL_DIR/$DCKR_DIR/linux/*.sh .$DIR_BIN

log_exit /$DIR_TMPL$DCKR_DIR/init