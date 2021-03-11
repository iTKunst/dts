#!/bin/bash
# shellcheck disable=SC2086


log_enter $TMPL_DIR$DCKR_DIR$CMD_INIT

cp .$DIR_TMPL/docker$OS_DIR/*.sh .$DIR_BIN

log_exit $TMPL_DIR$DCKR_DIR$CMD_INIT