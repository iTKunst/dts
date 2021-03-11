#!/bin/bash
# shellcheck disable=SC2086


log_enter /$DIR_TMPL/env$CMD_INIT

cp $TMPL_DIR$ENV_DIR$DIR_OS/tENV.sh .$DIR_BIN

log_exit /$DIR_TMPL/env$CMD_INIT