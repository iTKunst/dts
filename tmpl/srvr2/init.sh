#!/bin/bash
# shellcheck disable=SC2086


log_enter $TMPL_DIR$CMD_INIT

source $TMPL_DIR$DCKR_DIR$CMD_INIT
source $TMPL_DIR$ENV_DIR$CMD_INIT
source bin/pINSTALL.sh

log_exit $TMPL_DIR$CMD_INIT