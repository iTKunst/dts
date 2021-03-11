#!/bin/bash
# shellcheck disable=SC2086


log_enter $TMPL_DIR$DCKR_DIR$CMD_INIT

cp $TMPL_DIR$DCKR_DIR$DIR_OS/*.sh .$DIR_BIN

log_exit $TMPL_DIR$DCKR_DIR$CMD_INIT