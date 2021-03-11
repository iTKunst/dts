#!/bin/bash
# shellcheck disable=SC2086


log_enter $TMPL_DIR$ENV_DIR$CMD_INIT

cp $TMPL_DIR$ENV_DIR$DIR_OS/tENV.sh .$DIR_BIN

log_exit $TMPL_DIR$ENV_DIR$CMD_INIT
