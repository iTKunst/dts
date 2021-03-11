#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_TMPL_CURR$CMD_INIT

source ./$DIR_TMPL/docker$CMD_INIT
source ./$DIR_TMPL$ENV_DIR$CMD_INIT

log_exit $DIR_TMPL_CURR$CMD_INIT
