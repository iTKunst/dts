#!/bin/bash
# shellcheck disable=SC2086


log_enter /$TMPL_DIR$DCKR_DIR$CMD_INIT

cp $TMPL_DIR/$DCKR_DIR$OS_DIR/*.sh ./bin

log_exit /$TMPL_DIR$DCKR_DIR$CMD_INIT