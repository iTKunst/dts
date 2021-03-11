#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_TMPL_CURR$ENV_DIR$CMD_INIT

cp $DIR_TMPL_CURR$ENV_DIR$DIR_OS/tENV.sh .$DIR_BIN

log_exit $DIR_TMPL_CURR$ENV_DIR$CMD_INIT
