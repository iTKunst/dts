#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_TMPL$ENV_DIR$DIR_SLASH$FILE_INIT

cp $TMPL_DIR$ENV_DIR$OS_DIR/tENV.sh $DIR_BIN


log_exit $DIR_TMPL$ENV_DIR$DIR_SLASH$FILE_INIT