#!/bin/bash
# shellcheck disable=SC2086


log_enter /$DIR_TMPL$DCKR_DIR$DIR_SLASH$FILE_INIT

cp ./$DIR_TMPL$DCKR_DIR$FILES $DIR_BIN

log_exit /$DIR_TMPL$DCKR_DIR$DIR_SLASH$FILE_INIT
