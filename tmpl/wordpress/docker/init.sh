#!/bin/bash
# shellcheck disable=SC2086


log_enter $TMPL_DIR$DIR_DCKR$CMD_INIT

cp $TMPL_DIR$DIR_DCKR$DIR_OS/*.sh .$DIR_BIN

log_exit $TMPL_DIR$DIR_DCKR$CMD_INIT
