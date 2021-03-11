#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_TMPL_CURR$DCKR_DIR$CMD_INIT

cp .$DIR_TMPL_CURR$DCKR_DIR$OS_DIR/*.sh .$DIR_BIN

log_exit $DIR_TMPL_CURR$DCKR_DIR$CMD_INIT