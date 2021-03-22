#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_TMPL_CURR$FILE_INIT

source ./$DIR_TMPL/docker$FILE_INIT
source ./$DIR_TMPL$ENV_DIR$FILE_INIT

log_exit $DIR_TMPL_CURR$FILE_INIT
