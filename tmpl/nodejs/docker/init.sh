#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_TMPL_CURR$DCKR_DIR$FILE_INIT

cp $TMPL_DIR/$DCKR_DIR$FILES $DIR_BIN

log_exit $DIR_TMPL_CURR$DCKR_DIR$FILE_INIT