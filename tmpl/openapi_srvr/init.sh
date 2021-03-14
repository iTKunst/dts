#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_TMPL_CURR$DIR_SLASH$FILE_INIT

source ./$DIR_TMPL/docker$DIR_SLASH$FILE_INIT
source ./$DIR_TMPL$ENV_DIR$DIR_SLASH$FILE_INIT

log_exit $DIR_TMPL_CURR$DIR_SLASH$FILE_INIT
